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

variable "instance_name"{
    type = string
    default = "frontend"
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