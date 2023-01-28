resource "null_resource" "ssh_OS1" {
	connection {
			type            = "ssh"
			user 		= "ec2-user"
			private_key	= "${file("C:/Users/MALVI/OneDrive/Desktop/Arth/aws/clouduse10+0.pem")}"
			host 		= "${aws_instance.server_OS1.public_ip}"
			timeout		= "2m"
			agent           = false
	}

	provisioner "remote-exec" { 
			inline = [
				"sudo yum install httpd -y",
				"sudo systemctl enable httpd  --now",
				"sudo mkdir /var/www/html/search",
				"sudo echo 'this is server OS1 and search web page' > /var/www/html/search/index.html",
			]
	}
}
resource "null_resource" "ssh_OS2" {
	connection {
			type            = "ssh"
			user 		= "ec2-user"
			private_key	= "${file("C:/Users/MALVI/OneDrive/Desktop/Arth/aws/clouduse10+0.pem")}"
			host 		= "${aws_instance.server_OS2.public_ip}"
			timeout		= "2m"
			agent           = false
	}

	provisioner "remote-exec" { 
			inline = [
				"sudo yum install httpd -y",
				"sudo systemctl enable httpd  --now",
				"sudo mkdir /var/www/html/search",
				"sudo echo 'this is server OS2 and search web page' > /var/www/html/search/index.html",
			]
	}
}
resource "null_resource" "ssh_OS3" {
	connection {
			type            = "ssh"
			user 		= "ec2-user"
			private_key	= "${file("C:/Users/MALVI/OneDrive/Desktop/Arth/aws/clouduse10+0.pem")}"
			host 		= "${aws_instance.server_OS3.public_ip}"
			agent           = false
	}

	provisioner "remote-exec" { 
			inline = [
				"sudo yum install httpd -y",
				"sudo systemctl enable httpd  --now",
				"sudo mkdir /var/www/html/mail",
				"sudo echo 'this is server OS3 and search mail page' > /var/www/html/search/index.html",
			]
	}
}
resource "null_resource" "ssh_OS4" {
	connection {
			type            = "ssh"
			user 		= "ec2-user"
			private_key	= "${file("C:/Users/MALVI/OneDrive/Desktop/Arth/aws/clouduse10+0.pem")}"
			host 		= "${aws_instance.server_OS4.public_ip}"
			timeout		= "2m"
			agent           = false
	}

	provisioner "remote-exec" { 
			inline = [
				"sudo yum install httpd -y",
				"sudo systemctl enable httpd  --now",
				"sudo mkdir /var/www/html/mail",
				"sudo echo 'this is server OS4 and search mail page' > /var/www/html/search/index.html",
			]
	}
}