variable "ami_id" {
  default     = "ami-d15a75c7"
  description = "AMI ID to use when launching our EC2 instance. Default is Ubuntu 16.04 LTS in us-east-1"
}

resource "aws_instance" "mod" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
}
