resource "aws_instance" "mod" {
  ami           = "ami-d15a75c7"
  instance_type = "t2.micro"
}
