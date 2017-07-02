provider "aws" {
  region = "eu-west-1"
}

module "myinstance" {
  source ="./module"
  # Default to find, or uncomment to use a specific one
  # ami_id = "ami-3f4a5259"
}
