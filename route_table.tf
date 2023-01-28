resource "aws_route_table" "myroute" {
	  vpc_id = aws_vpc.myvpc.id
 	   tags = {
   		 Name = "myNLB-route"
  		}
}



resource "aws_route_table_association" "public_subnet_1a_association_with_route" {

  subnet_id      = aws_subnet.public_subnet_1a.id
  route_table_id = aws_route_table.myroute.id

}


resource "aws_route_table_association" "public_subnet_1b_association_with_route" {

  subnet_id      = aws_subnet.public_subnet_1b.id
  route_table_id = aws_route_table.myroute.id

}



resource "aws_route" "route" {

		route_table_id = aws_route_table.myroute.id
		destination_cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.my_internetgw.id

}
