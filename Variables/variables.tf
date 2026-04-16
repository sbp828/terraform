variable "ami_image_id"{
    type = string
    default = "ami-0c02fb55956c7d316"
    description = "default practice ami id for test server"
}

variable "instance_type"{
    type = string
    default = "t3.micro"
    description = "test-server"
}


variable "tags"{
    default = {
        Project = "Localhelp"
        Environment = "Dev"
        Name = "Dev"
        Module = "Dev"
        CreatedBy = "terraform_user"
    }
}

variable "sg_name"{
    default = "allow_ssh"
}

variable "sg_description"{
    default = "allow ssh traffic"
}

variable "ssh_port"{
    default = 22
}

variable "protocol"{
    default = "tcp"
}

variable "allowed_cidr"{
    default = ["0.0.0.0/0"]
}