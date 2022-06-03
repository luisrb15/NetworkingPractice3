data "aws_ami" "ubuntu" {
    most_recent = true
    filter {
        name = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
    }
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
    owners = ["099720109477"]
}

resource "aws_instance" "office1_ec2" {
    ami = data.aws_ami.ubuntu.id
    subnet_id = aws_subnet.office1.id
    vpc_security_group_ids = [aws_security_group.private.id, aws_security_group.allow_ssh_private.id]
    associate_public_ip_address = false
    key_name = aws_key_pair.luiskp.key_name
    instance_type = "t2.micro"
    tags = {
        Name = "office1_ec2"
    }
}

resource "aws_instance" "office2_ec2" {
    ami = data.aws_ami.ubuntu.id
    subnet_id = aws_subnet.office2.id
    vpc_security_group_ids = [aws_security_group.private.id, aws_security_group.allow_ssh_private.id]
    associate_public_ip_address = false
    key_name = aws_key_pair.luiskp.key_name
    instance_type = "t2.micro"
    tags = {
        Name = "office2_ec2"
    }
}

resource "aws_instance" "office3_ec2" {
    ami = data.aws_ami.ubuntu.id
    subnet_id = aws_subnet.office3.id
    vpc_security_group_ids = [aws_security_group.private.id, aws_security_group.allow_ssh_private.id]
    associate_public_ip_address = false
    key_name = aws_key_pair.luiskp.key_name
    instance_type = "t2.micro"
    tags = {
        Name = "office3_ec2"
    }
}

resource "aws_instance" "office4remote_ec2" {
    ami = data.aws_ami.ubuntu.id
    subnet_id = aws_subnet.office4remote.id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    associate_public_ip_address = true
    key_name = aws_key_pair.luiskp.key_name
    instance_type = "t2.micro"
    tags = {
        Name = "office4remote_ec2"
    }
}