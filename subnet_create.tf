
resource "aws_subnet" "public_subnet_1a" {
	vpc_id = 		aws_vpc.myvpc.id
	cidr_block= 		"111.111.1.0/24"
	availability_zone = 	"ap-south-1a"
	map_public_ip_on_launch= true
	tags = {
			Name =	"public-subnet-1a"
	}
}

resource "aws_subnet" "public_subnet_1b" {
	vpc_id = 		aws_vpc.myvpc.id
	cidr_block = 		"111.111.2.0/24"
	availability_zone = 	"ap-south-1b"
	map_public_ip_on_launch= true
	tags = {
			Name =	"public-subnet-1b"
	}
}

