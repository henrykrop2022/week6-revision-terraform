terraform {
  backend "s3" {
    bucket = "bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "lock"
    encrypt = true
  }
}
