# tested with PostgreSQL 9.6 + pgAdmin 4
# "pip install psycopg2 requests" for python, "pip3 install psycopg2 requests" for python3
# example with db_initialization: (python\python3) metaweather.py -i 1
# example without db_initialization: (python\python3) metaweather.py -i 0

import re
import os
import json
import urllib
import requests
import psycopg2
import argparse
import datetime
from statistics import mean

#args
parser = argparse.ArgumentParser()
parser.add_argument('-i', '--initialization',default='0')
args = parser.parse_args()

#cfg
url = 'https://www.metaweather.com/api/location/2123260/'
db_cfg = {
'db_host': 'localhost',
'db_port': '5432',
'db_name': 'metaweather',
'db_login': 'postgres',
'db_pass': '322',
'table_name': 'c2onsolidated_weather'
}
db_sql_initialization = 'CREATE TABLE ' + db_cfg['table_name'] + ' (id SERIAL PRIMARY KEY, time timestamp without time zone, year_min_temp float, year_max_temp float, year_mean_humidity float, day_min_temp float, day_max_temp float, day_mean_humidity int);'

def api(url):
    operUrl = urllib.request.urlopen(url)
    if(operUrl.getcode()==200):
        data = operUrl.read()
        jsonData = json.loads(data)
    else:
        print("Error", operUrl.getcode())
    return jsonData

conn = psycopg2.connect( host=db_cfg['db_host'], port=db_cfg['db_port'], database=db_cfg['db_name'], user=db_cfg['db_login'], password=db_cfg['db_pass'])
cursor = conn.cursor()
if args.initialization == '1':
    cursor.execute(db_sql_initialization)

today = datetime.datetime.today()
date_1dayago = str(today.strftime("%Y/%m/")) + str(int(today.strftime("%d")) - 1)
date_1yearago = str(int(today.strftime("%Y")) - 1) + str(today.strftime("/%m/%d"))
print('date_1dayago = ' + date_1dayago)
print('date_1yearago = ' + date_1yearago)

json_day = api(url + date_1dayago)
json_year = api(url + date_1yearago)

arr_day_min_temp = []
arr_day_max_temp = []
arr_day_humidity = []
arr_year_min_temp = []
arr_year_max_temp = []
arr_year_humidity = []

#payload
for con in json_day:
    arr_day_min_temp.append(float(round(con['min_temp'], 2)))
    arr_day_max_temp.append(float(round(con['max_temp'], 2)))
    arr_day_humidity.append(int(con['humidity']))

for con in json_year:
    arr_year_min_temp.append(float(round(con['min_temp'], 2)))
    arr_year_max_temp.append(float(round(con['max_temp'], 2)))
    arr_year_humidity.append(int(con['humidity']))

sql_query = 'INSERT INTO ' + db_cfg['table_name'] + ' (time,year_min_temp,year_max_temp,year_mean_humidity,day_min_temp,day_max_temp,day_mean_humidity) VALUES (now(),' + str(min(arr_year_min_temp)) + ',' + str(max(arr_year_max_temp)) + ',' + str(float(round(mean(arr_year_humidity), 2))) + ',' + str(min(arr_day_min_temp)) + ',' + str(max(arr_day_max_temp)) + ',' + str(float(round(mean(arr_day_humidity), 2))) + ');'
print(sql_query)

cursor.execute(sql_query)
cursor.close()
conn.commit()
conn.close()
