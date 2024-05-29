resource "aws_security_group" "websg" {
   name = var.sg-name
    vpc_id = aws_vpc.manishvpc.id
ingress {
        description = "Allow HTTP inbound traffic"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}
    ingress {
        description =  "Allow SSH inbound traffic"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}
    egress{
        description = "Outbound any traffic allowed"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
