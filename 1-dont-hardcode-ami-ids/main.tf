provider "aws" {
  region = "us-east-2"
}

module "myinstance" {
  source ="./module"
  # We're in a different region, so we need to specify a different AMI.
  ami_id = "ami-5e94b23b"
}
