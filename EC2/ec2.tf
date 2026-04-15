resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh traafic"

   ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
    CreatedBy = "terraform_user"
  }
}

resource "aws_instance" "test_server"{
    ami = "ami-0c02fb55956c7d316"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = "t3.micro"
    tags = {
        Name = "test_server"

    }
}