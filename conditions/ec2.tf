resource "aws_instance" "test_server"{
    ami = "ami-0c02fb55956c7d316"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
}