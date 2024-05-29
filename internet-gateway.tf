resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.manishvpc.id
    tags = {
        Name = "myflask-igw"
    } 
}