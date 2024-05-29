variable "region" {
  default = "eu-central-1"
}
variable "instance_type" {
    description = "Name of the security group"
    default = "t2.micro"
}
variable "ami_id" {
  description = "AMI ID for the instance"
}
variable "subnet_az" {
  description = "Availability zone for the subnet"
}
variable "sg-name" {
    description = "Name of the security group"
}
variable "vpc_cidr" {
  description = "value of the VPC CIDR block"
    default = "10.0.0.0/16"
}
variable "key_name" {
  description = "value of the key pair name"
}