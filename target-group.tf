resource "aws_lb_target_group" "target_group1" {

	name 		= "search-tg"
	port 		= 80
	protocol 	= "HTTP"
	vpc_id 		= aws_vpc.myvpc.id

	health_check {
		protocol	    = "HTTP"
		port 		    = "traffic-port"
		healthy_threshold   = 4
		unhealthy_threshold = 2
		timeout 	    = 5
		interval            = 10
		matcher             = "200"
		path		    = "/"

	}

}

resource "aws_lb_target_group" "target_group2" {

	name 		= "mail-tg"
	port 		= 80
	protocol 	= "HTTP"
	vpc_id 		= aws_vpc.myvpc.id

	health_check {
		protocol	    = "HTTP"
		port 		    = "traffic-port"
		healthy_threshold   = 4
		unhealthy_threshold = 2
		timeout 	    = 5
		interval            = 10
		matcher             = "200"
		path		    = "/"

	}

}

resource "aws_lb_target_group_attachment" "target_attach1" {
	target_group_arn = aws_lb_target_group.target_group1.arn
	target_id        = aws_instance.server_OS1.id
        
}
resource "aws_lb_target_group_attachment" "target_attach2" {
	target_group_arn = aws_lb_target_group.target_group1.arn
	target_id        = aws_instance.server_OS2.id
        
}
resource "aws_lb_target_group_attachment" "target_attach3" {
	target_group_arn = aws_lb_target_group.target_group2.arn
	target_id        = aws_instance.server_OS3.id
        
}
resource "aws_lb_target_group_attachment" "target_attach4" {
	target_group_arn = aws_lb_target_group.target_group2.arn
	target_id        = aws_instance.server_OS4.id
        
}	