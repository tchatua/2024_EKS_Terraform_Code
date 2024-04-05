data "terraform_remote_state" "s3_backend_vpc_dev" {
  backend = "s3"
  config = {
    bucket = "lea-07192023-terraform-state"
    key    = "demo/vpc_dev/terraform.tfstate"
    region = "us-east-1" # Set the region of your S3 bucket
  }
}

