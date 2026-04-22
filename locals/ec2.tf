resource "aws_instance" "test_server"{
    ami = local.ami_id
    vpc_security_group_ids = []
    instance_type = local.instance_type
    tags = local.tags
}