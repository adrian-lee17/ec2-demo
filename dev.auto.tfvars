ec2_count_fe     = "1"
ami_id_fe        = "ami-0fb7513bcdc525c3b"
instance_type_fe = "t2.small"
subnet_id_fe     = "subnet-0e4f4d0a097e02522"
public_ip_fe     = "true"
az_fe            = "ap-southeast-2c"
disksize_fe      = [128, 512, 1024]
disktype_fe      = "Standard"
encryption_fe    = "false"
ec2name_fe       = "application"

ec2_count_be     = "1"
ami_id_be        = "ami-0fb7513bcdc525c3b"
instance_type_be = "t2.small"
subnet_id_be     = "subnet-086cafe978b15075c"
public_ip_be     = "false"
az_be            = "ap-southeast-2c"
disksize_be      = [1024]
disktype_be      = "Standard"
encryption_be    = "false"
ec2name_be       = "database"