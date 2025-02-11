
resource "aws_instance" "expense-project" {
  count=3
  ami                    = var.ami_id
  instance_type          = var.environment == "prod" ? "t3.small" :"t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = var.instance[count.index]
  }

}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "this is created from terraform"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = var.ec2_tags


}