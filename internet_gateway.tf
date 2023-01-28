resource "aws_internet_gateway" "my_internetgw" {
	vpc_id = aws_vpc.myvpc.id

	tags = {
	    Name = "my-NLB-internet-gateway"
  	}
}

