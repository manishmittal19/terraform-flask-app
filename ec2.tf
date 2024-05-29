resource "aws_instance" "server" {
  ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.websg.id]
    subnet_id = aws_subnet.subman.id
    key_name = aws_key_pair.mykey.key_name

    connection {
        type = "ssh"
        user = "ec2-user"
        private_key = file("${var.private_key_path}")
        host = self.public_ip
      
    }
    provisioner "file" {
        source = "$home/Interview_practice/application_deployment_aws/flask_application/templates/app.py"
    destination = "/tmp/app.py"
    }
    provisioner "file" {
        source = "$home/Interview_practice/application_deployment_aws/flask_application/templates/index.html"
    destination = "/tmp/templates/index.html"
    }
    provisioner "remote-exec" {
        inline = [
            "echo 'hello word'",
            "sudo yum update",
            "sudo yum install python3 -y",
            "sudo yum install python3-pip -y",
            "cd /home/ec2-user",
            "sudo pip3 install flask",
            "sudo python3 /tmp/app.py"
        ]
    }
}