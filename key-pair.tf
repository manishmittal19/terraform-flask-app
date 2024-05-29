resource "aws_key_pair" "mykey" {
    key_name   = var.key_name
    public_key = file("${var.public_key_path}")
}