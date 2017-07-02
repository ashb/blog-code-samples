provider "aws" {
  region = "eu-west-1"
}

module "myinstance" {
  source ="./module"
}
