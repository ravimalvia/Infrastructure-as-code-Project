resource "aws_lb" "lb" {
	name 			= "lb-test"
        internal		= false
        load_balancer_type	= "application"
        ip_address_type 	= "ipv4"
        subnets 		= [aws_subnet.public_subnet_1a.id,aws_subnet.public_subnet_1b.id]
          
	security_groups		= [aws_security_group.secure_instance.id]
	tags 			= {
           		Name 	= "LoadBalancer"
	}  
}    


resource "aws_lb_listener" "listener" {
	load_balancer_arn 	= aws_lb.lb.arn
  	port 			= "80"
	protocol 		= "HTTP"
	default_action {
           type          	= "forward"
           target_group_arn	= aws_lb_target_group.target_group1.arn
  	} 
	tags 			= {
		Name 		= "Listener"
	}

}   

resource "aws_lb_listener_rule" "listener_rule1" {
	listener_arn 		 = aws_lb_listener.listener.arn
	action {
		type 		 = "forward"
		target_group_arn = aws_lb_target_group.target_group1.arn
	}
	condition {
		path_pattern {
			values    = ["/search/index.html", "/search", "/Search/index.html","/Search"]
		}
	}
}

resource "aws_lb_listener_rule" "listener_rule2" {
	listener_arn    	 = aws_lb_listener.listener.arn
	action {
		type  		 = "forward"
		target_group_arn = aws_lb_target_group.target_group2.arn
	}
	condition {
		path_pattern {
			values	 = ["/mail/index.html", "/mail", "/Mail/index.html","/Mail"]
		}
	}
}

         
