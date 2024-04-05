output "ansible_ec2_id" {
    value = aws_instance.ec2.id
}

output "ansible_public_ip" {
    value = aws_instance.ec2.public_ip
}

output "ansible_private_ip" {
    value = aws_instance.ec2.private_ip
}  

