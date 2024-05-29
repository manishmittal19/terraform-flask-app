resource "aws_subnet" "subman" {
    vpc_id = aws_vpc.manishvpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = var.subnet_az
    map_public_ip_on_launch = true  #This is to enable public IP on the instances
    tags = {
        Name = "myflask-subnet"
    }  
}