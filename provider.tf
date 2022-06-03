terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "lbvpc"{
    cidr_block = "192.168.0.0/20"
    instance_tenancy = "default"

    tags={
        Name="lbvpc"
    }
}