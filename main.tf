resource "aws_instance" "instance" {
    count = 5
ami = "ami-0220d79f3f480ecf5"
instance_type = "t3.small"
vpc_security_group_ids = ["sg-0b664c01a2a25bc88"]

tags = {
    Name = var.components[count.index]
}
}
variable "components"{
    default = ["frontend","postgresql","portfolio-service","analaytics-services","Auth-service"]
}
