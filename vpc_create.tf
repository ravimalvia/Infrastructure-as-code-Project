resource "aws_vpc"  "myvpc" {
	tags= {
		Name= "VPC-for-ALB"
	}
	cidr_block       = "111.111.0.0/16"
	instance_tenancy = "default"
	
}





