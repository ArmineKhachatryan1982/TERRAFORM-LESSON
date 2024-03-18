resource "aws_instance" "web" {
  count         = 3
  ami           = "ami-022661f8a4a1b91cf"
  instance_type = "t2.micro"

  tags = {
    Name = "MyEc2-${count.index + 1}"
  }
}
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}
