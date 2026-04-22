resource "aws_instance" "expense"{
    for_each = var.instance_names
    #count = length(var.instance_names)
    ami = var.ami_image_id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ports.id]
    tags = {
        Name = each.key
        Module = each.key
    }
}

resource "aws_security_group" "allow_ports" {
  name        = "allow_ports"
  description = "Allow 22, 8080 ,3360,80 ports"

   dynamic "ingress" {
    for_each = var.ingress_rules
    content{
    from_port        = ingress.value.port
    to_port          = ingress.value.port
    protocol         = ingress.value.protocol
    cidr_blocks      = ingress.value.allowed_cidr
    }
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