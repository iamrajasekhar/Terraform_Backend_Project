terraform {
  backend "s3" {
    bucket = "rajasekhar-s3-tf-backend"
    region = "us-east-1"
    key = "backend/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}