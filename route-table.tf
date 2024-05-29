resource "aws_route_table" "RT-flask" {
    vpc_id = aws_vpc.manishvpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }
  
}