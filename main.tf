provider "aws" {
    profile = "default"
    region = "us-east-1"  
}

# CREATE THE VPC

resource "aws_vpc" "vpc" {
    cidr_block = "10.1.0.0/16"
}

# Internet Gateway

resource "aws_internet_gateway" "internet_gateway" {
    vpc_id = "aws_vpc.vpc.id"
  
}

# Public Route Table

resource "aws_route_table" "public" {
    vpc_id = aws_vpc.vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "aws_internet_gateway.internet_gateway.id"
    }
}

# Private Route Table

resource "aws_default_route_table" "private" {
  default_route_table_id = "aws_vpc.vpc.default_route_table_id"

}


# SUBNETS
# public
# private 1
# private 2
# RDS 1
# RDS2
# RDS 3

# SECURITY GROUPS
# Private
# Public
# RDS

# S3 CODE BUCKET

# MEDIA BUCKET

# COMPUTE
# Dev Server
    #Ansible Playbook
# Load Balancer
# Amazon Machine Image (AMI)
# Launch Configuration
# Auto Scaling Group (ASG)

# ROUTE 53
# Primary Zone
# www
# dev
# D8atabase


