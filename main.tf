resource "aws_instance" "web" {
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_instance" "web1" {
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEc2-1"
  }
}
resource "aws_instance" "web2" {
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEc2-2"
  }
}
resource "aws_instance" "web3" {
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEc2-3"
  }
}