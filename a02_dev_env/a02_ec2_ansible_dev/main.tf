module "ansible" {
  source        = "../../a01_module/a02_EC2_Ansible/"
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  pub_sub_01_id = data.terraform_remote_state.s3_backend_vpc_dev.outputs.pub_sub_1_dev_id 
  name          = var.name
}
