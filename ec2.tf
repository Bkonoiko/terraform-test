resource "aws_instance" "user2" {
  ami               = var.ami_id
  instance_type     = var.az_id
  availability_zone = var.itype_id
  key_name          = var.key_id
  vpc_security_group_ids = [
    "sg-09f28ffb52f2ff670",
    "sg-09a062ce4e0e7e81e",
    aws_security_group.tsfg1.id
  ]

  depends_on = [aws_security_group.tsfg1]

  tags = {
    Name = var.ec2_name
    iac  = var.iac_id
  }
}



resource "aws_ec2_instance_state" "vm1state" {
  instance_id = aws_instance.user2.id
  state       = "stopped"
}


resource "aws_security_group" "tsfg1" {
  name        = "https"
  description = "allow https"
  vpc_id      = "vpc-0a28d8dc5892b45a7"

  ingress {
    from_port   = 443
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all outbound"
  }

}