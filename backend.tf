terraform {
  backend "s3" {
    bucket         = "terraform-state-subhash"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }
}
