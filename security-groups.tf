resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"
  #vpc_id      = aws_vpc.main.id

  ingress {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["189.6.244.27/32"]
    }

}

resource "aws_security_group" "acesso-ssh-us-east-2" {
  provider = "aws.us-east-2"
  name        = "acesso-ssh"
  description = "acesso-ssh"
  #vpc_id      = aws_vpc.main.id

  ingress {
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["189.6.244.27/32"]
    }

}