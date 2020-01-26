provider "aws" {
	profile = "default"
	region 		 = "us-east-2"
}

resource "aws_vpc" "main" {
	cidr_block				= "10.0.0.0/16"
	enable_dns_support = "true"
  enable_dns_hostnames = "true" 
  enable_classiclink = "false"
  instance_tenancy = "default"    
    
	tags = {
			Name = "prod-vpc"
	}
}

resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"
	map_public_ip_on_launch = "true"
	availability_zone = "us-east-2a"
	
	tags = {
			Name = "prod-subnet-public-1"
	}
}

resource "aws_subnet" "private" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.2.0/24"
	availability_zone = "us-east-2a"
	
	tags = {
			Name = "prod-subnet-private-1"
	}
}
