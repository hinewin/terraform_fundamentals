resource "aws_instance" "basic_vm" {
  instance_type = "t2.micro"
  ami           = "ami-0d53d72369335a9d6"
}
