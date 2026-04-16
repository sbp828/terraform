variable "ami_image_id"{
    type = string
    default = "ami-0c02fb55956c7d316"
    description = "default practice ami id for test server"
}



variable "instance_names"{
    type = list
    default = ["db","backend","frontend"]
}

variable "instance_type"{
    default = "t3.micro"
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

variable "instance_count"{
    type = number
    default = 3
}