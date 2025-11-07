resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-0157af9aea2eef346"
  instance_type = "t2.micro"
  key_name      = "ec2test"
  tags = {
    Name = "MyTerraformInstance"
  }
}