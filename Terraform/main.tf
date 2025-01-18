provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    bucket  = "sellsy-terraform-state"
    key     = "terraform.tfstate"
    region  = "ap-northeast-1"
    encrypt = true
  }
}

resource "aws_s3_bucket" "sellsy-terraform-state" {
  bucket = var.s3_bucket_name
}