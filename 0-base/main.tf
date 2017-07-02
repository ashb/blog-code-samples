provider "aws" {
  region = "us-east-1"
}

module "myinstance" {
  source ="./module"
}
