resource "aws_instance" "back" {
    ami = var.ami
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = aws_subnet.pub1.id
    vpc_security_group_ids = [aws_security_group.bastion-host.id ]
    tags = {
      Name= "bastion-server"
    }
}

resource "aws_instance" "frontend-server" {
    ami = var.ami
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = aws_subnet.prvt3.id
    vpc_security_group_ids = [aws_security_group.frontend-server-sg.id ]
    tags = {
      Name= "frontend-server"
    }
}

resource "aws_instance" "backend-server" {
    ami = var.ami
    instance_type = var.instance-type
    key_name = var.key-name
    subnet_id = aws_subnet.prvt5.id
    vpc_security_group_ids = [aws_security_group.backend-server-sg.id ]
    tags = {
      Name= "backend-server"
    }
}
