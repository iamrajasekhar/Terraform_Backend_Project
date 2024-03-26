resource "aws_s3_bucket" "tf-bucket" {
  bucket = var.s3_bucket_name
}

resource "aws_dynamodb_table" "tf-backend-lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}