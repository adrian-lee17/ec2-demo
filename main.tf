provider "aws" {
  region = "ap-southeast-2"
}

module "frontendVM" {
  source        = "app.terraform.io/WiproLtd/demo/ec2"
 
  ec2_count     = var.ec2_count_fe
  ami_id        = var.ami_id_fe
  instance_type = var.instance_type_fe
  subnet_id     = var.subnet_id_fe
  public_ip     = var.public_ip_fe
  az            = var.az_fe
  disksize      = var.disksize_fe
  disktype      = var.disktype_fe
  encryption    = var.encryption_fe
  ec2name       = var.ec2name_fe
}

module "backendVM" {
  source        = "app.terraform.io/WiproLtd/demo/ec2"
  
  ec2_count     = var.ec2_count_be
  ami_id        = var.ami_id_be
  instance_type = var.instance_type_be
  subnet_id     = var.subnet_id_be
  public_ip     = var.public_ip_be
  az            = var.az_be
  disksize      = var.disksize_be
  disktype      = var.disktype_be
  encryption    = var.encryption_be
  ec2name       = var.ec2name_be
}

output "frontendVMID" {
    value       = module.backendVM.*.id
}
output "backendVMID" {
    value       = module.frontendVM.*.id
}
output "frontendVMpublicIP" {
    value       = module.backendVM.public_ip
}

output "frontendVMprivateIP" {
    value       = module.backendVM.private_ip
}

output "backendVMprivateIP" {
    value       = module.frontendVM.private_ip
}

terraform {
  backend "remote" {
    organization = "WiProLtd"

    workspaces {
      name = "rms-ec2-demo-singlesite"
    }
  }
}