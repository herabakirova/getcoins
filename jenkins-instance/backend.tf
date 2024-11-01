terraform {
  backend "s3" {
    bucket = "getcoins-hera-ohio"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-2"
  }
}