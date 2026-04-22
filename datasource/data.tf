data "aws_ami" "ami"{
    most_recent = true
    owners = ["837206354502"]
    filter{
        name = "name"
        values = ["MY-AMI-*"]
    }
    filter{
        name = "root-device-type"
        values = ["ebs"]
    }
    filter{
        name = "virtualization-type"
        values = ["hvm"]
    }
    filter{
        name = "root-device-name"
        values = ["/dev/sda1"]
    }
}

data "aws_route53_zone" "r53"{
    name = "localhelp.store"
    private_zone = false
}