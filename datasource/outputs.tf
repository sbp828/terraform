
output "ami_r53_values"{
    value = {
        ami_id = data.aws_ami.ami.id
        zone_id = data.aws_route53_zone.r53.zone_id
        name_server = data.aws_route53_zone.r53.primary_name_server

    }
}