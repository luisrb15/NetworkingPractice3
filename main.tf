resource "aws_subnet" "office2" {
    vpc_id = aws_vpc.lbvpc.id
    cidr_block = "192.168.0.0/23"
    tags={
        Name="office2"
    }
}

resource "aws_subnet" "office1" {
    vpc_id = aws_vpc.lbvpc.id
    cidr_block = "192.168.2.0/25"
    tags={
        Name="office1"
    }
}



resource "aws_subnet" "office3" {
    vpc_id = aws_vpc.lbvpc.id
    cidr_block = "192.168.2.128/26"
    tags={
        Name="office3"
    }
}

resource "aws_subnet" "office4remote" {
    vpc_id = aws_vpc.lbvpc.id
    cidr_block = "192.168.2.192/26"
    tags={
        Name="office4remote"
    }
}


resource "aws_internet_gateway" "igw_lb" {
    vpc_id = aws_vpc.lbvpc.id
    tags={
        Name="igw_lb"
    }
}

resource "aws_route_table" "routelb" {
    vpc_id = aws_vpc.lbvpc.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw_lb.id
    }
    tags={
        Name="routelb"
    } 
}

resource "aws_route_table_association" "routeasoc_lb" {
    subnet_id = aws_subnet.office4remote.id
    route_table_id = aws_route_table.routelb.id
}