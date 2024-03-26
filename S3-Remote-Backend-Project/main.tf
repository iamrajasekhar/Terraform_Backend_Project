resource "aws_instance" "tf-ec2" {
  ami = var.ami
  instance_type = var.instance_type
  tags = {
    name: "tf-ec2"
    env: "Prod"
  }
}
