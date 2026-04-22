locals{
    ami_id = "ami-0c02fb55956c7d316"
    instance_type = var.instance_names == "db" ? "t3.small" : "t3.micro"
    tags = {
        Name = "test_server"
    }


    
}