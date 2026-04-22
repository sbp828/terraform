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

variable "instance_names"{
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
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

# #variable "ssh_port"{
#     default = 22
# }

# variable "protocol"{
#     default = "tcp"
# }

# variable "allowed_cidr"{
#     default = ["0.0.0.0/0"]
# }

variable "domain_name"{
    default = "localhelp.store"
}

variable "zone_id"{
    default = "Z07241871PKD037TPLRDV"
} 

variable "ingress_rules"{
    default = [
        {
        port = 22
        protocol = "tcp"
        allowed_cidr = ["0.0.0.0/0"]
        },
        {
        port = 8080
        protocol = "tcp"
        allowed_cidr = ["0.0.0.0/0"]
        },
        {
        port = 80
        protocol = "tcp"
        allowed_cidr = ["0.0.0.0/0"]
        },
        {
        port = 3306
        protocol = "tcp"
        allowed_cidr = ["0.0.0.0/0"]
        },

    ]
    }


