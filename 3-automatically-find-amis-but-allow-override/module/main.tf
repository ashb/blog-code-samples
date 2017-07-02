variable "ami_id" {
  default     = "" # Note this is empty.
  description = "Use this specific AMI ID for our EC2 instance. Default is Ubuntu 16.04 LTS in the current region"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "mod" {
  ami           = "${var.ami_id != "" ? var.ami_id : data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
}
