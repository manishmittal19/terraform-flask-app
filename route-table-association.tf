resource "aws_route_table_association" "rta1" {
  subnet_id      = aws_subnet.subman.id
  route_table_id = aws_route_table.RT-flask.id
}