
Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  [32m+[0m create
 [36m<=[0m read (data resources)
[0m
Terraform will perform the following actions:

[1m  # data.aws_eks_cluster.cluster[0m will be read during apply
  # (config refers to values not yet known)[0m[0m
[0m [36m<=[0m[0m data "aws_eks_cluster" "cluster"  {
      [32m+[0m [0m[1m[0marn[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mcertificate_authority[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mcreated_at[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0menabled_cluster_log_types[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mendpoint[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0midentity[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mkubernetes_network_config[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mplatform_version[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mrole_arn[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mstatus[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mversion[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mvpc_config[0m[0m                = (known after apply)
    }

[1m  # data.aws_eks_cluster_auth.cluster[0m will be read during apply
  # (config refers to values not yet known)[0m[0m
[0m [36m<=[0m[0m data "aws_eks_cluster_auth" "cluster"  {
      [32m+[0m [0m[1m[0mid[0m[0m    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m  = (known after apply)
      [32m+[0m [0m[1m[0mtoken[0m[0m = (sensitive value)
    }

[1m  # aws_security_group.all_worker_mgmt[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "all_worker_mgmt" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "Managed by Terraform"
      [32m+[0m [0m[1m[0megress[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"10.0.0.0/8",
                  [32m+[0m [0m"172.16.0.0/12",
                  [32m+[0m [0m"192.168.0.0/16",
                ]
              [32m+[0m [0mdescription      = ""
              [32m+[0m [0mfrom_port        = 22
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 22
            },
        ]
      [32m+[0m [0m[1m[0mname[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = "all_worker_management"
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[1m  # aws_security_group.worker_group_mgmt_one[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "worker_group_mgmt_one" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "Managed by Terraform"
      [32m+[0m [0m[1m[0megress[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"10.0.0.0/8",
                ]
              [32m+[0m [0mdescription      = ""
              [32m+[0m [0mfrom_port        = 22
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 22
            },
        ]
      [32m+[0m [0m[1m[0mname[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = "worker_group_mgmt_one"
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[1m  # aws_security_group.worker_group_mgmt_two[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "worker_group_mgmt_two" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "Managed by Terraform"
      [32m+[0m [0m[1m[0megress[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = [
          [32m+[0m [0m{
              [32m+[0m [0mcidr_blocks      = [
                  [32m+[0m [0m"192.168.0.0/16",
                ]
              [32m+[0m [0mdescription      = ""
              [32m+[0m [0mfrom_port        = 22
              [32m+[0m [0mipv6_cidr_blocks = []
              [32m+[0m [0mprefix_list_ids  = []
              [32m+[0m [0mprotocol         = "tcp"
              [32m+[0m [0msecurity_groups  = []
              [32m+[0m [0mself             = false
              [32m+[0m [0mto_port          = 22
            },
        ]
      [32m+[0m [0m[1m[0mname[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = "worker_group_mgmt_two"
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[1m  # random_string.suffix[0m will be created[0m[0m
[0m  [32m+[0m[0m resource "random_string" "suffix" {
      [32m+[0m [0m[1m[0mid[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mlength[0m[0m      = 8
      [32m+[0m [0m[1m[0mlower[0m[0m       = true
      [32m+[0m [0m[1m[0mmin_lower[0m[0m   = 0
      [32m+[0m [0m[1m[0mmin_numeric[0m[0m = 0
      [32m+[0m [0m[1m[0mmin_special[0m[0m = 0
      [32m+[0m [0m[1m[0mmin_upper[0m[0m   = 0
      [32m+[0m [0m[1m[0mnumber[0m[0m      = true
      [32m+[0m [0m[1m[0mresult[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mspecial[0m[0m     = false
      [32m+[0m [0m[1m[0mupper[0m[0m       = true
    }

[1m  # module.eks.data.http.wait_for_cluster[0][0m will be read during apply
  # (config refers to values not yet known)[0m[0m
[0m [36m<=[0m[0m data "http" "wait_for_cluster"  {
      [32m+[0m [0m[1m[0mbody[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mca_certificate[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mresponse_headers[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mtimeout[0m[0m          = 300
      [32m+[0m [0m[1m[0murl[0m[0m              = (known after apply)
    }

[1m  # module.eks.aws_autoscaling_group.workers[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_autoscaling_group" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mavailability_zones[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mcapacity_rebalance[0m[0m        = false
      [32m+[0m [0m[1m[0mdefault_cooldown[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mdesired_capacity[0m[0m          = 2
      [32m+[0m [0m[1m[0mforce_delete[0m[0m              = false
      [32m+[0m [0m[1m[0mforce_delete_warm_pool[0m[0m    = false
      [32m+[0m [0m[1m[0mhealth_check_grace_period[0m[0m = 300
      [32m+[0m [0m[1m[0mhealth_check_type[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mlaunch_configuration[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mmax_instance_lifetime[0m[0m     = 0
      [32m+[0m [0m[1m[0mmax_size[0m[0m                  = 3
      [32m+[0m [0m[1m[0mmetrics_granularity[0m[0m       = "1Minute"
      [32m+[0m [0m[1m[0mmin_size[0m[0m                  = 1
      [32m+[0m [0m[1m[0mname[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mprotect_from_scale_in[0m[0m     = false
      [32m+[0m [0m[1m[0mservice_linked_role_arn[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0msuspended_processes[0m[0m       = [
          [32m+[0m [0m"AZRebalance",
        ]
      [32m+[0m [0m[1m[0mtermination_policies[0m[0m      = []
      [32m+[0m [0m[1m[0mvpc_zone_identifier[0m[0m       = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_capacity_timeout[0m[0m = "10m"

      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "Environment"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "epam-learning"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "GithubOrg"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "terraform-aws-modules"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "GithubRepo"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "terraform-aws-eks"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "Name"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = (known after apply)
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = (known after apply)
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "owned"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = (known after apply)
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "owned"
        }
    }

[1m  # module.eks.aws_autoscaling_group.workers[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_autoscaling_group" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mavailability_zones[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mcapacity_rebalance[0m[0m        = false
      [32m+[0m [0m[1m[0mdefault_cooldown[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mdesired_capacity[0m[0m          = 1
      [32m+[0m [0m[1m[0mforce_delete[0m[0m              = false
      [32m+[0m [0m[1m[0mforce_delete_warm_pool[0m[0m    = false
      [32m+[0m [0m[1m[0mhealth_check_grace_period[0m[0m = 300
      [32m+[0m [0m[1m[0mhealth_check_type[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mlaunch_configuration[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mmax_instance_lifetime[0m[0m     = 0
      [32m+[0m [0m[1m[0mmax_size[0m[0m                  = 3
      [32m+[0m [0m[1m[0mmetrics_granularity[0m[0m       = "1Minute"
      [32m+[0m [0m[1m[0mmin_size[0m[0m                  = 1
      [32m+[0m [0m[1m[0mname[0m[0m                      = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mprotect_from_scale_in[0m[0m     = false
      [32m+[0m [0m[1m[0mservice_linked_role_arn[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0msuspended_processes[0m[0m       = [
          [32m+[0m [0m"AZRebalance",
        ]
      [32m+[0m [0m[1m[0mtermination_policies[0m[0m      = []
      [32m+[0m [0m[1m[0mvpc_zone_identifier[0m[0m       = (known after apply)
      [32m+[0m [0m[1m[0mwait_for_capacity_timeout[0m[0m = "10m"

      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "Environment"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "epam-learning"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "GithubOrg"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "terraform-aws-modules"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "GithubRepo"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "terraform-aws-eks"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = "Name"
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = (known after apply)
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = (known after apply)
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "owned"
        }
      [32m+[0m [0mtag {
          [32m+[0m [0m[1m[0mkey[0m[0m                 = (known after apply)
          [32m+[0m [0m[1m[0mpropagate_at_launch[0m[0m = true
          [32m+[0m [0m[1m[0mvalue[0m[0m               = "owned"
        }
    }

[1m  # module.eks.aws_eks_cluster.this[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_eks_cluster" "this" {
      [32m+[0m [0m[1m[0marn[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mcertificate_authority[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mcreated_at[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mendpoint[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0midentity[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mplatform_version[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mrole_arn[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mstatus[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                  = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m              = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0mversion[0m[0m               = "1.20"

      [32m+[0m [0mkubernetes_network_config {
          [32m+[0m [0m[1m[0mservice_ipv4_cidr[0m[0m = (known after apply)
        }

      [32m+[0m [0mtimeouts {
          [32m+[0m [0m[1m[0mcreate[0m[0m = "30m"
          [32m+[0m [0m[1m[0mdelete[0m[0m = "15m"
        }

      [32m+[0m [0mvpc_config {
          [32m+[0m [0m[1m[0mcluster_security_group_id[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mendpoint_private_access[0m[0m   = false
          [32m+[0m [0m[1m[0mendpoint_public_access[0m[0m    = true
          [32m+[0m [0m[1m[0mpublic_access_cidrs[0m[0m       = [
              [32m+[0m [0m"0.0.0.0/0",
            ]
          [32m+[0m [0m[1m[0msecurity_group_ids[0m[0m        = (known after apply)
          [32m+[0m [0m[1m[0msubnet_ids[0m[0m                = (known after apply)
          [32m+[0m [0m[1m[0mvpc_id[0m[0m                    = (known after apply)
        }
    }

[1m  # module.eks.aws_iam_instance_profile.workers[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_instance_profile" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mcreate_date[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mpath[0m[0m        = "/"
      [32m+[0m [0m[1m[0mrole[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m        = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m    = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0munique_id[0m[0m   = (known after apply)
    }

[1m  # module.eks.aws_iam_instance_profile.workers[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_instance_profile" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mcreate_date[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mpath[0m[0m        = "/"
      [32m+[0m [0m[1m[0mrole[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m        = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m    = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0munique_id[0m[0m   = (known after apply)
    }

[1m  # module.eks.aws_iam_policy.cluster_elb_sl_role_creation[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_policy" "cluster_elb_sl_role_creation" {
      [32m+[0m [0m[1m[0marn[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m = "Permissions for EKS to create AWSServiceRoleForElasticLoadBalancing service-linked role"
      [32m+[0m [0m[1m[0mid[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mpath[0m[0m        = "/"
      [32m+[0m [0m[1m[0mpolicy[0m[0m      = jsonencode(
            {
              [32m+[0m [0mStatement = [
                  [32m+[0m [0m{
                      [32m+[0m [0mAction   = [
                          [32m+[0m [0m"ec2:DescribeInternetGateways",
                          [32m+[0m [0m"ec2:DescribeAddresses",
                          [32m+[0m [0m"ec2:DescribeAccountAttributes",
                        ]
                      [32m+[0m [0mEffect   = "Allow"
                      [32m+[0m [0mResource = "*"
                      [32m+[0m [0mSid      = ""
                    },
                ]
              [32m+[0m [0mVersion   = "2012-10-17"
            }
        )
      [32m+[0m [0m[1m[0mpolicy_id[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m        = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m    = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
    }

[1m  # module.eks.aws_iam_role.cluster[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role" "cluster" {
      [32m+[0m [0m[1m[0marn[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0massume_role_policy[0m[0m    = jsonencode(
            {
              [32m+[0m [0mStatement = [
                  [32m+[0m [0m{
                      [32m+[0m [0mAction    = "sts:AssumeRole"
                      [32m+[0m [0mEffect    = "Allow"
                      [32m+[0m [0mPrincipal = {
                          [32m+[0m [0mService = "eks.amazonaws.com"
                        }
                      [32m+[0m [0mSid       = "EKSClusterAssumeRole"
                    },
                ]
              [32m+[0m [0mVersion   = "2012-10-17"
            }
        )
      [32m+[0m [0m[1m[0mcreate_date[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mforce_detach_policies[0m[0m = true
      [32m+[0m [0m[1m[0mid[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mmanaged_policy_arns[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0mmax_session_duration[0m[0m  = 3600
      [32m+[0m [0m[1m[0mname[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mpath[0m[0m                  = "/"
      [32m+[0m [0m[1m[0mtags[0m[0m                  = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m              = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0munique_id[0m[0m             = (known after apply)

      [32m+[0m [0minline_policy {
          [32m+[0m [0m[1m[0mname[0m[0m   = (known after apply)
          [32m+[0m [0m[1m[0mpolicy[0m[0m = (known after apply)
        }
    }

[1m  # module.eks.aws_iam_role.workers[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0massume_role_policy[0m[0m    = jsonencode(
            {
              [32m+[0m [0mStatement = [
                  [32m+[0m [0m{
                      [32m+[0m [0mAction    = "sts:AssumeRole"
                      [32m+[0m [0mEffect    = "Allow"
                      [32m+[0m [0mPrincipal = {
                          [32m+[0m [0mService = "ec2.amazonaws.com"
                        }
                      [32m+[0m [0mSid       = "EKSWorkerAssumeRole"
                    },
                ]
              [32m+[0m [0mVersion   = "2012-10-17"
            }
        )
      [32m+[0m [0m[1m[0mcreate_date[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mforce_detach_policies[0m[0m = true
      [32m+[0m [0m[1m[0mid[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mmanaged_policy_arns[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0mmax_session_duration[0m[0m  = 3600
      [32m+[0m [0m[1m[0mname[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mpath[0m[0m                  = "/"
      [32m+[0m [0m[1m[0mtags[0m[0m                  = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0mtags_all[0m[0m              = {
          [32m+[0m [0m"Environment" = "epam-learning"
          [32m+[0m [0m"GithubOrg"   = "terraform-aws-modules"
          [32m+[0m [0m"GithubRepo"  = "terraform-aws-eks"
        }
      [32m+[0m [0m[1m[0munique_id[0m[0m             = (known after apply)

      [32m+[0m [0minline_policy {
          [32m+[0m [0m[1m[0mname[0m[0m   = (known after apply)
          [32m+[0m [0m[1m[0mpolicy[0m[0m = (known after apply)
        }
    }

[1m  # module.eks.aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "cluster_AmazonEKSClusterPolicy" {
      [32m+[0m [0m[1m[0mid[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpolicy_arn[0m[0m = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
      [32m+[0m [0m[1m[0mrole[0m[0m       = (known after apply)
    }

[1m  # module.eks.aws_iam_role_policy_attachment.cluster_AmazonEKSServicePolicy[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "cluster_AmazonEKSServicePolicy" {
      [32m+[0m [0m[1m[0mid[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpolicy_arn[0m[0m = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
      [32m+[0m [0m[1m[0mrole[0m[0m       = (known after apply)
    }

[1m  # module.eks.aws_iam_role_policy_attachment.cluster_AmazonEKSVPCResourceControllerPolicy[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "cluster_AmazonEKSVPCResourceControllerPolicy" {
      [32m+[0m [0m[1m[0mid[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpolicy_arn[0m[0m = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
      [32m+[0m [0m[1m[0mrole[0m[0m       = (known after apply)
    }

[1m  # module.eks.aws_iam_role_policy_attachment.cluster_elb_sl_role_creation[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "cluster_elb_sl_role_creation" {
      [32m+[0m [0m[1m[0mid[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpolicy_arn[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mrole[0m[0m       = (known after apply)
    }

[1m  # module.eks.aws_iam_role_policy_attachment.workers_AmazonEC2ContainerRegistryReadOnly[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "workers_AmazonEC2ContainerRegistryReadOnly" {
      [32m+[0m [0m[1m[0mid[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpolicy_arn[0m[0m = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
      [32m+[0m [0m[1m[0mrole[0m[0m       = (known after apply)
    }

[1m  # module.eks.aws_iam_role_policy_attachment.workers_AmazonEKSWorkerNodePolicy[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "workers_AmazonEKSWorkerNodePolicy" {
      [32m+[0m [0m[1m[0mid[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpolicy_arn[0m[0m = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
      [32m+[0m [0m[1m[0mrole[0m[0m       = (known after apply)
    }

[1m  # module.eks.aws_iam_role_policy_attachment.workers_AmazonEKS_CNI_Policy[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_iam_role_policy_attachment" "workers_AmazonEKS_CNI_Policy" {
      [32m+[0m [0m[1m[0mid[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpolicy_arn[0m[0m = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
      [32m+[0m [0m[1m[0mrole[0m[0m       = (known after apply)
    }

[1m  # module.eks.aws_launch_configuration.workers[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_launch_configuration" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0massociate_public_ip_address[0m[0m = false
      [32m+[0m [0m[1m[0mebs_optimized[0m[0m               = false
      [32m+[0m [0m[1m[0menable_monitoring[0m[0m           = true
      [32m+[0m [0m[1m[0miam_instance_profile[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mimage_id[0m[0m                    = "ami-0d9874a2c8210efb9"
      [32m+[0m [0m[1m[0minstance_type[0m[0m               = "t2.small"
      [32m+[0m [0m[1m[0mkey_name[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0msecurity_groups[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0muser_data_base64[0m[0m            = (known after apply)

      [32m+[0m [0mebs_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mno_device[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0msnapshot_id[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }

      [32m+[0m [0mmetadata_options {
          [32m+[0m [0m[1m[0mhttp_endpoint[0m[0m               = "enabled"
          [32m+[0m [0m[1m[0mhttp_put_response_hop_limit[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mhttp_tokens[0m[0m                 = "optional"
        }

      [32m+[0m [0mroot_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = true
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = false
          [32m+[0m [0m[1m[0miops[0m[0m                  = 0
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = 100
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = "gp2"
        }
    }

[1m  # module.eks.aws_launch_configuration.workers[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_launch_configuration" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0massociate_public_ip_address[0m[0m = false
      [32m+[0m [0m[1m[0mebs_optimized[0m[0m               = false
      [32m+[0m [0m[1m[0menable_monitoring[0m[0m           = true
      [32m+[0m [0m[1m[0miam_instance_profile[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                          = (known after apply)
      [32m+[0m [0m[1m[0mimage_id[0m[0m                    = "ami-0d9874a2c8210efb9"
      [32m+[0m [0m[1m[0minstance_type[0m[0m               = "t2.medium"
      [32m+[0m [0m[1m[0mkey_name[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0msecurity_groups[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0muser_data_base64[0m[0m            = (known after apply)

      [32m+[0m [0mebs_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mdevice_name[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0miops[0m[0m                  = (known after apply)
          [32m+[0m [0m[1m[0mno_device[0m[0m             = (known after apply)
          [32m+[0m [0m[1m[0msnapshot_id[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = (known after apply)
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = (known after apply)
        }

      [32m+[0m [0mmetadata_options {
          [32m+[0m [0m[1m[0mhttp_endpoint[0m[0m               = "enabled"
          [32m+[0m [0m[1m[0mhttp_put_response_hop_limit[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0mhttp_tokens[0m[0m                 = "optional"
        }

      [32m+[0m [0mroot_block_device {
          [32m+[0m [0m[1m[0mdelete_on_termination[0m[0m = true
          [32m+[0m [0m[1m[0mencrypted[0m[0m             = false
          [32m+[0m [0m[1m[0miops[0m[0m                  = 0
          [32m+[0m [0m[1m[0mthroughput[0m[0m            = (known after apply)
          [32m+[0m [0m[1m[0mvolume_size[0m[0m           = 100
          [32m+[0m [0m[1m[0mvolume_type[0m[0m           = "gp2"
        }
    }

[1m  # module.eks.aws_security_group.cluster[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "cluster" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "EKS cluster security group."
      [32m+[0m [0m[1m[0megress[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[1m  # module.eks.aws_security_group.workers[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group" "workers" {
      [32m+[0m [0m[1m[0marn[0m[0m                    = (known after apply)
      [32m+[0m [0m[1m[0mdescription[0m[0m            = "Security group for all nodes in the cluster."
      [32m+[0m [0m[1m[0megress[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0mingress[0m[0m                = (known after apply)
      [32m+[0m [0m[1m[0mname[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mname_prefix[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mrevoke_rules_on_delete[0m[0m = false
      [32m+[0m [0m[1m[0mtags[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                 = (known after apply)
    }

[1m  # module.eks.aws_security_group_rule.cluster_egress_internet[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group_rule" "cluster_egress_internet" {
      [32m+[0m [0m[1m[0mcidr_blocks[0m[0m              = [
          [32m+[0m [0m"0.0.0.0/0",
        ]
      [32m+[0m [0m[1m[0mdescription[0m[0m              = "Allow cluster egress access to the Internet."
      [32m+[0m [0m[1m[0mfrom_port[0m[0m                = 0
      [32m+[0m [0m[1m[0mid[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mprotocol[0m[0m                 = "-1"
      [32m+[0m [0m[1m[0msecurity_group_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mself[0m[0m                     = false
      [32m+[0m [0m[1m[0msource_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mto_port[0m[0m                  = 0
      [32m+[0m [0m[1m[0mtype[0m[0m                     = "egress"
    }

[1m  # module.eks.aws_security_group_rule.cluster_https_worker_ingress[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group_rule" "cluster_https_worker_ingress" {
      [32m+[0m [0m[1m[0mdescription[0m[0m              = "Allow pods to communicate with the EKS cluster API."
      [32m+[0m [0m[1m[0mfrom_port[0m[0m                = 443
      [32m+[0m [0m[1m[0mid[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mprotocol[0m[0m                 = "tcp"
      [32m+[0m [0m[1m[0msecurity_group_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mself[0m[0m                     = false
      [32m+[0m [0m[1m[0msource_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mto_port[0m[0m                  = 443
      [32m+[0m [0m[1m[0mtype[0m[0m                     = "ingress"
    }

[1m  # module.eks.aws_security_group_rule.workers_egress_internet[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group_rule" "workers_egress_internet" {
      [32m+[0m [0m[1m[0mcidr_blocks[0m[0m              = [
          [32m+[0m [0m"0.0.0.0/0",
        ]
      [32m+[0m [0m[1m[0mdescription[0m[0m              = "Allow nodes all egress to the Internet."
      [32m+[0m [0m[1m[0mfrom_port[0m[0m                = 0
      [32m+[0m [0m[1m[0mid[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mprotocol[0m[0m                 = "-1"
      [32m+[0m [0m[1m[0msecurity_group_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mself[0m[0m                     = false
      [32m+[0m [0m[1m[0msource_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mto_port[0m[0m                  = 0
      [32m+[0m [0m[1m[0mtype[0m[0m                     = "egress"
    }

[1m  # module.eks.aws_security_group_rule.workers_ingress_cluster[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group_rule" "workers_ingress_cluster" {
      [32m+[0m [0m[1m[0mdescription[0m[0m              = "Allow workers pods to receive communication from the cluster control plane."
      [32m+[0m [0m[1m[0mfrom_port[0m[0m                = 1025
      [32m+[0m [0m[1m[0mid[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mprotocol[0m[0m                 = "tcp"
      [32m+[0m [0m[1m[0msecurity_group_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mself[0m[0m                     = false
      [32m+[0m [0m[1m[0msource_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mto_port[0m[0m                  = 65535
      [32m+[0m [0m[1m[0mtype[0m[0m                     = "ingress"
    }

[1m  # module.eks.aws_security_group_rule.workers_ingress_cluster_https[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group_rule" "workers_ingress_cluster_https" {
      [32m+[0m [0m[1m[0mdescription[0m[0m              = "Allow pods running extension API servers on port 443 to receive communication from cluster control plane."
      [32m+[0m [0m[1m[0mfrom_port[0m[0m                = 443
      [32m+[0m [0m[1m[0mid[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mprotocol[0m[0m                 = "tcp"
      [32m+[0m [0m[1m[0msecurity_group_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mself[0m[0m                     = false
      [32m+[0m [0m[1m[0msource_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mto_port[0m[0m                  = 443
      [32m+[0m [0m[1m[0mtype[0m[0m                     = "ingress"
    }

[1m  # module.eks.aws_security_group_rule.workers_ingress_self[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_security_group_rule" "workers_ingress_self" {
      [32m+[0m [0m[1m[0mdescription[0m[0m              = "Allow node to communicate with each other."
      [32m+[0m [0m[1m[0mfrom_port[0m[0m                = 0
      [32m+[0m [0m[1m[0mid[0m[0m                       = (known after apply)
      [32m+[0m [0m[1m[0mprotocol[0m[0m                 = "-1"
      [32m+[0m [0m[1m[0msecurity_group_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mself[0m[0m                     = false
      [32m+[0m [0m[1m[0msource_security_group_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mto_port[0m[0m                  = 65535
      [32m+[0m [0m[1m[0mtype[0m[0m                     = "ingress"
    }

[1m  # module.eks.kubernetes_config_map.aws_auth[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "kubernetes_config_map" "aws_auth" {
      [32m+[0m [0m[1m[0mdata[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m   = (known after apply)

      [32m+[0m [0mmetadata {
          [32m+[0m [0m[1m[0mgeneration[0m[0m       = (known after apply)
          [32m+[0m [0m[1m[0mlabels[0m[0m           = {
              [32m+[0m [0m"app.kubernetes.io/managed-by" = "Terraform"
              [32m+[0m [0m"terraform.io/module"          = "terraform-aws-modules.eks.aws"
            }
          [32m+[0m [0m[1m[0mname[0m[0m             = "aws-auth"
          [32m+[0m [0m[1m[0mnamespace[0m[0m        = "kube-system"
          [32m+[0m [0m[1m[0mresource_version[0m[0m = (known after apply)
          [32m+[0m [0m[1m[0muid[0m[0m              = (known after apply)
        }
    }

[1m  # module.eks.local_file.kubeconfig[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "local_file" "kubeconfig" {
      [32m+[0m [0m[1m[0mcontent[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mdirectory_permission[0m[0m = "0755"
      [32m+[0m [0m[1m[0mfile_permission[0m[0m      = "0600"
      [32m+[0m [0m[1m[0mfilename[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                   = (known after apply)
    }

[1m  # module.vpc.aws_eip.nat[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_eip" "nat" {
      [32m+[0m [0m[1m[0mallocation_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0massociation_id[0m[0m       = (known after apply)
      [32m+[0m [0m[1m[0mcarrier_ip[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mcustomer_owned_ip[0m[0m    = (known after apply)
      [32m+[0m [0m[1m[0mdomain[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0minstance[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mnetwork_border_group[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mnetwork_interface[0m[0m    = (known after apply)
      [32m+[0m [0m[1m[0mprivate_dns[0m[0m          = (known after apply)
      [32m+[0m [0m[1m[0mprivate_ip[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_dns[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_ip[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mpublic_ipv4_pool[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mvpc[0m[0m                  = true
    }

[1m  # module.vpc.aws_internet_gateway.this[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_internet_gateway" "this" {
      [32m+[0m [0m[1m[0marn[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m       = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m     = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m   = (known after apply)
    }

[1m  # module.vpc.aws_nat_gateway.this[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_nat_gateway" "this" {
      [32m+[0m [0m[1m[0mallocation_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mconnectivity_type[0m[0m    = "public"
      [32m+[0m [0m[1m[0mid[0m[0m                   = (known after apply)
      [32m+[0m [0m[1m[0mnetwork_interface_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mprivate_ip[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mpublic_ip[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m             = (known after apply)
    }

[1m  # module.vpc.aws_route.private_nat_gateway[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route" "private_nat_gateway" {
      [32m+[0m [0m[1m[0mdestination_cidr_block[0m[0m = "0.0.0.0/0"
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0minstance_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0minstance_owner_id[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mnat_gateway_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mnetwork_interface_id[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0morigin[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mstate[0m[0m                  = (known after apply)

      [32m+[0m [0mtimeouts {
          [32m+[0m [0m[1m[0mcreate[0m[0m = "5m"
        }
    }

[1m  # module.vpc.aws_route.public_internet_gateway[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route" "public_internet_gateway" {
      [32m+[0m [0m[1m[0mdestination_cidr_block[0m[0m = "0.0.0.0/0"
      [32m+[0m [0m[1m[0mgateway_id[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m                     = (known after apply)
      [32m+[0m [0m[1m[0minstance_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0minstance_owner_id[0m[0m      = (known after apply)
      [32m+[0m [0m[1m[0mnetwork_interface_id[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0morigin[0m[0m                 = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mstate[0m[0m                  = (known after apply)

      [32m+[0m [0mtimeouts {
          [32m+[0m [0m[1m[0mcreate[0m[0m = "5m"
        }
    }

[1m  # module.vpc.aws_route_table.private[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table" "private" {
      [32m+[0m [0m[1m[0marn[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpropagating_vgws[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mroute[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m           = (known after apply)
    }

[1m  # module.vpc.aws_route_table.public[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table" "public" {
      [32m+[0m [0m[1m[0marn[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mid[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mpropagating_vgws[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0mroute[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m         = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m           = (known after apply)
    }

[1m  # module.vpc.aws_route_table_association.private[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "private" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # module.vpc.aws_route_table_association.private[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "private" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # module.vpc.aws_route_table_association.private[2][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "private" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # module.vpc.aws_route_table_association.public[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "public" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # module.vpc.aws_route_table_association.public[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "public" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # module.vpc.aws_route_table_association.public[2][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_route_table_association" "public" {
      [32m+[0m [0m[1m[0mid[0m[0m             = (known after apply)
      [32m+[0m [0m[1m[0mroute_table_id[0m[0m = (known after apply)
      [32m+[0m [0m[1m[0msubnet_id[0m[0m      = (known after apply)
    }

[1m  # module.vpc.aws_subnet.private[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "private" {
      [32m+[0m [0m[1m[0marn[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m               = "eu-central-1a"
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                      = "10.0.1.0/24"
      [32m+[0m [0m[1m[0mid[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m  = (known after apply)
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m         = false
      [32m+[0m [0m[1m[0mowner_id[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                          = (known after apply)
    }

[1m  # module.vpc.aws_subnet.private[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "private" {
      [32m+[0m [0m[1m[0marn[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m               = "eu-central-1b"
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                      = "10.0.2.0/24"
      [32m+[0m [0m[1m[0mid[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m  = (known after apply)
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m         = false
      [32m+[0m [0m[1m[0mowner_id[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                          = (known after apply)
    }

[1m  # module.vpc.aws_subnet.private[2][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "private" {
      [32m+[0m [0m[1m[0marn[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m               = "eu-central-1c"
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                      = "10.0.3.0/24"
      [32m+[0m [0m[1m[0mid[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m  = (known after apply)
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m         = false
      [32m+[0m [0m[1m[0mowner_id[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                          = (known after apply)
    }

[1m  # module.vpc.aws_subnet.public[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "public" {
      [32m+[0m [0m[1m[0marn[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m               = "eu-central-1a"
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                      = "10.0.4.0/24"
      [32m+[0m [0m[1m[0mid[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m  = (known after apply)
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m         = true
      [32m+[0m [0m[1m[0mowner_id[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                          = (known after apply)
    }

[1m  # module.vpc.aws_subnet.public[1][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "public" {
      [32m+[0m [0m[1m[0marn[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m               = "eu-central-1b"
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                      = "10.0.5.0/24"
      [32m+[0m [0m[1m[0mid[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m  = (known after apply)
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m         = true
      [32m+[0m [0m[1m[0mowner_id[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                          = (known after apply)
    }

[1m  # module.vpc.aws_subnet.public[2][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_subnet" "public" {
      [32m+[0m [0m[1m[0marn[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0massign_ipv6_address_on_creation[0m[0m = false
      [32m+[0m [0m[1m[0mavailability_zone[0m[0m               = "eu-central-1c"
      [32m+[0m [0m[1m[0mavailability_zone_id[0m[0m            = (known after apply)
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                      = "10.0.6.0/24"
      [32m+[0m [0m[1m[0mid[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block_association_id[0m[0m  = (known after apply)
      [32m+[0m [0m[1m[0mmap_public_ip_on_launch[0m[0m         = true
      [32m+[0m [0m[1m[0mowner_id[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                            = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                        = (known after apply)
      [32m+[0m [0m[1m[0mvpc_id[0m[0m                          = (known after apply)
    }

[1m  # module.vpc.aws_vpc.this[0][0m will be created[0m[0m
[0m  [32m+[0m[0m resource "aws_vpc" "this" {
      [32m+[0m [0m[1m[0marn[0m[0m                              = (known after apply)
      [32m+[0m [0m[1m[0massign_generated_ipv6_cidr_block[0m[0m = false
      [32m+[0m [0m[1m[0mcidr_block[0m[0m                       = "10.0.0.0/16"
      [32m+[0m [0m[1m[0mdefault_network_acl_id[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mdefault_route_table_id[0m[0m           = (known after apply)
      [32m+[0m [0m[1m[0mdefault_security_group_id[0m[0m        = (known after apply)
      [32m+[0m [0m[1m[0mdhcp_options_id[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0menable_classiclink[0m[0m               = (known after apply)
      [32m+[0m [0m[1m[0menable_classiclink_dns_support[0m[0m   = (known after apply)
      [32m+[0m [0m[1m[0menable_dns_hostnames[0m[0m             = true
      [32m+[0m [0m[1m[0menable_dns_support[0m[0m               = true
      [32m+[0m [0m[1m[0mid[0m[0m                               = (known after apply)
      [32m+[0m [0m[1m[0minstance_tenancy[0m[0m                 = "default"
      [32m+[0m [0m[1m[0mipv6_association_id[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mipv6_cidr_block[0m[0m                  = (known after apply)
      [32m+[0m [0m[1m[0mmain_route_table_id[0m[0m              = (known after apply)
      [32m+[0m [0m[1m[0mowner_id[0m[0m                         = (known after apply)
      [32m+[0m [0m[1m[0mtags[0m[0m                             = (known after apply)
      [32m+[0m [0m[1m[0mtags_all[0m[0m                         = (known after apply)
    }

[0m[1mPlan:[0m 51 to add, 0 to change, 0 to destroy.
[0m[0m
[1mChanges to Outputs:[0m[0m
  [32m+[0m [0m[1m[0mcluster_endpoint[0m[0m          = (known after apply)
  [32m+[0m [0m[1m[0mcluster_id[0m[0m                = (known after apply)
  [32m+[0m [0m[1m[0mcluster_name[0m[0m              = (known after apply)
  [32m+[0m [0m[1m[0mcluster_security_group_id[0m[0m = (known after apply)
  [32m+[0m [0m[1m[0mconfig_map_aws_auth[0m[0m       = [
      [32m+[0m [0m{
          [32m+[0m [0mbinary_data = [90mnull[0m[0m
          [32m+[0m [0mdata        = (known after apply)
          [32m+[0m [0mid          = (known after apply)
          [32m+[0m [0mmetadata    = [
              [32m+[0m [0m{
                  [32m+[0m [0mannotations      = [90mnull[0m[0m
                  [32m+[0m [0mgenerate_name    = [90mnull[0m[0m
                  [32m+[0m [0mgeneration       = (known after apply)
                  [32m+[0m [0mlabels           = {
                      [32m+[0m [0m"app.kubernetes.io/managed-by" = "Terraform"
                      [32m+[0m [0m"terraform.io/module"          = "terraform-aws-modules.eks.aws"
                    }
                  [32m+[0m [0mname             = "aws-auth"
                  [32m+[0m [0mnamespace        = "kube-system"
                  [32m+[0m [0mresource_version = (known after apply)
                  [32m+[0m [0muid              = (known after apply)
                },
            ]
        },
    ]
  [32m+[0m [0m[1m[0mkubectl_config[0m[0m            = (known after apply)
  [32m+[0m [0m[1m[0mregion[0m[0m                    = "eu-central-1"
[90m
─────────────────────────────────────────────────────────────────────────────[0m

Note: You didn't use the -out option to save this plan, so Terraform can't
guarantee to take exactly these actions if you run "terraform apply" now.