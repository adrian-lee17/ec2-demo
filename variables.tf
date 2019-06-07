variable "ec2name_fe" {
}
variable "ec2_count_fe" {
  default = "1"
}
variable "ami_id_fe" {}
variable "instance_type_fe" {
  default = "t2.micro"
}
variable "subnet_id_fe" {}
variable "public_ip_fe" {
  default = "true"
}
variable "az_fe" {}
variable "disksize_fe" {}
variable "encryption_fe" {
  default = "true"
}
variable "disktype_fe" {
  default = "gp2"
}
variable "ec2name_be" {}
variable "ec2_count_be" {
  default = "1"
}
variable "ami_id_be" {}
variable "instance_type_be" {
  default = "t2.micro"
}
variable "subnet_id_be" {}
variable "public_ip_be" {
  default = "true"
}
variable "az_be" {}
variable "disksize_be" {}
variable "encryption_be" {
  default = "true"
}
variable "disktype_be" {
  default = "gp2"
}