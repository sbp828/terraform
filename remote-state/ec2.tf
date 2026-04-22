resource "aws_instance" "test_server"{
    ami = "ami-0c02fb55956c7d316"
    vpc_security_group_ids = []
    instance_type = "t3.micro"
    tags = {
        Name = "test_server"

    }
}