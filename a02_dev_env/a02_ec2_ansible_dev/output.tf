output "ansible_ec2_id_dev" {
  value = module.ansible.ansible_ec2_id
}

output "ansible_public_ip_dev" {
  value = module.ansible.ansible_public_ip

}
output "ansible_private_ip_dev" {
  value = module.ansible.ansible_private_ip
}
