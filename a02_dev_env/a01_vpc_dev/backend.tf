terraform {
  backend "s3" {
    bucket = "lea-07192023-terraform-state"
    key    = "demo/vpc_dev/terraform.tfstate"
    region = "us-east-1"
    # encrypt = true
    dynamodb_table = "Lea_Table"
  }
}