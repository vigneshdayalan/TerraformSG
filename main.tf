terraform {
  required_version = ">0.15"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.51.0"
    }
  }
}
  # backend "s3" {
  #   bucket                  = "dev-securitygroups-public-terraformstate"
  #   key                     = "sg-statefile"
  #   region                  = "eu-west-2"
  #   shared_credentials_file = "C:/Users/Vignesh.babu/.aws/credentials"
  #   profile                 = "cohortcore-dev"
  #   dynamodb_table          = "terraform-state-locktable"
  # }

provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "C:/Users/Vignesh.babu/.aws/credentials"
  profile                 = "604575884205_generic-dev-access"
}
