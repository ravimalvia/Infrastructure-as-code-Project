
variable "amiID" {

	default="ami-0cca134ec43cf708f"

}


variable "instance_type" {

	default="t2.micro"

}

resource "aws_instance" "server_OS1" {

	ami 				= var.amiID
	instance_type 			= var.instance_type
	subnet_id     			= aws_subnet.public_subnet_1a.id	
	associate_public_ip_address 	= true
	vpc_security_group_ids          = [aws_security_group.secure_instance.id,]
	tags = {
			Name 		= "server_OS1"
	}

	key_name                        = "clouduse10+0"
  
}

resource "aws_instance" "server_OS2" {

	ami 				= var.amiID
	instance_type 			= var.instance_type
	subnet_id     			= aws_subnet.public_subnet_1a.id	
	associate_public_ip_address 	= true
	vpc_security_group_ids          = [aws_security_group.secure_instance.id,]
	tags = {
			Name = "server_OS2"
	}
	key_name                        = "clouduse10+0"
}

resource "aws_instance" "server_OS3" {

	ami 	     			= var.amiID
	instance_type 			= var.instance_type
	subnet_id     			= aws_subnet.public_subnet_1b.id	
	associate_public_ip_address     = true
	vpc_security_group_ids          = [aws_security_group.secure_instance.id,]
	tags = {
		Name = "server_OS3"
	}
	key_name                        = "clouduse10+0"	
}

resource "aws_instance" "server_OS4" {

	ami 	     			= var.amiID
	instance_type 			= var.instance_type
	subnet_id     			= aws_subnet.public_subnet_1b.id	
	associate_public_ip_address     = true
	vpc_security_group_ids          = [aws_security_group.secure_instance.id,]
	tags = {
		Name = "server_OS4"
	}
	key_name                        = "clouduse10+0"	
}

		