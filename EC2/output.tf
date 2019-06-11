locals {
  vm_id                           = compact(coalescelist(aws_instance.vm.*.id, [""]))
  vm_availability_zone            = compact(coalescelist(aws_instance.vm.*.availability_zone, [""]))
  vm_key_name                     = compact(coalescelist(aws_instance.vm.*.key_name, aws_instance.vm_t2.*.key_name, [""]))
  vm_public_dns                   = compact(coalescelist(aws_instance.vm.*.public_dns,  [""]))
  vm_public_ip                    = compact(coalescelist(aws_instance.vm.*.public_ip,  [""]))
  vm_primary_network_interface_id = compact(coalescelist(aws_instance.vm.*.primary_network_interface_id, [""]))
  vm_private_dns                  = compact(coalescelist(aws_instance.vm.*.private_dns,  [""]))
  vm_private_ip                   = compact(coalescelist(aws_instance.vm.*.private_ip, [""]))
  vm_placement_group              = compact(concat(coalescelist(aws_instance.vm.*.placement_group, [""]))
  vm_security_groups              = coalescelist(aws_instance.vm.*.security_groups, [""])
  vm_vpc_security_group_ids       = coalescelist(flatten(aws_instance.vm.*.vpc_security_group_ids),  [""])
  vm_subnet_id                    = compact(coalescelist(aws_instance.vm.*.subnet_id,[""]))
  vm_tags                         = coalescelist(aws_instance.vm.*.tags,  [""])
  vm_volume_tags                  = coalescelist(aws_instance.vm.*.volume_tags,[""])
}

output "id" {
  description = "List of IDs of instances"
  value       = local.vm_id
}

output "availability_zone" {
  description = "List of availability zones of instances"
  value       = local.vm_availability_zone
}

output "placement_group" {
  description = "List of placement groups of instances"
  value       = local.vm_placement_group
}

output "key_name" {
  description = "List of key names of instances"
  value       = local.vm_key_name
}

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, vm is only available if you've enabled DNS hostnames for your VPC"
  value       = local.vm_public_dns
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = local.vm_public_ip
}

output "primary_network_interface_id" {
  description = "List of IDs of the primary network interface of instances"
  value       = local.vm_primary_network_interface_id
}

output "private_dns" {
  description = "List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = local.vm_private_dns
}

output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = local.vm_private_ip
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = local.vm_security_groups
}

output "subnet_id" {
  description = "List of IDs of VPC subnets of instances"
  value       = local.vm_subnet_id
}

output "credit_specification" {
  description = "List of credit specification of instances"
  value       = local.vm_credit_specification
}

output "tags" {
  description = "List of tags of instances"
  value       = local.vm_tags
}

output "volume_tags" {
  description = "List of tags of volumes of instances"
  value       = local.vm_volume_tags
}