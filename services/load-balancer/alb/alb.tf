############################################################ Web ALB ############################################################

/**
 * Web App ALB
 */
resource "aws_alb" "vpc-web-poshmark" {
    idle_timeout    = 60
    internal        = false
    name            = "vpc-web-poshmark"
    security_groups = ["${module.sg.production-app-elb-id}", "${module.sg.production-cloudfront-app-elb-id}", "${module.sg.production-cloudfront-http-id}", "${module.sg.production-cloudfront-https-id}"]
    subnets         = ["${module.subnet.apppublicsubnetb-id},${module.subnet.apppublicsubnetc-id}"]
    enable_deletion_protection = true

    access_logs {
        bucket  = "vpc-web-elb-logs.poshmark.com"
        enabled = true
        prefix  = ""
    }

    tags {
        "Type" = "WebApp"
        "Elb_Name" = "Vpc-Web-Poshmark"
        "Cluster" = "App"
    }
}

/**
 * Target group for Web App ALB
 */
resource "aws_alb_target_group" "web-app" {
  name     = "web-app"
  port     = 9292
  protocol = "HTTP"
  vpc_id   = "${module.vpc.poshmark-id}"

  health_check {
    path = "/api"
  }
}

/**
 * Target group and EC2 association
*/
resource "aws_lb_target_group_attachment" "web-app-instance" {
  count            = "${var.webapp_count}"
  target_group_arn = "${aws_alb_target_group.web-app.arn}"
  target_id        = "${element(list(module.app.prod-web-app-ids), count.index)}"
  port             = 9292
}

/**
 * HTTP Listener for Web App ALB
 */
resource "aws_alb_listener" "front_80" {
   load_balancer_arn = "${aws_alb.vpc-web-poshmark.arn}"
   port = "80"
   protocol = "HTTP"
   default_action {
     target_group_arn = "${aws_alb_target_group.web-app.arn}"
     type = "forward"
   }
}

resource "aws_lb_listener_rule" "front_80-up-app" {
  listener_arn = "${aws_alb_listener.front_80.arn}"
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = "${aws_alb_target_group.up-app.arn}"
  }

  condition {
    field  = "path-pattern"
    values = ["/api/posts/*"]
  }
}

resource "aws_lb_listener_rule" "front_80-mapp-app" {
  listener_arn = "${aws_alb_listener.front_80.arn}"
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = "${aws_alb_target_group.mapp-app.arn}"
  }

  condition {
    field  = "path-pattern"
    values = ["/mapp/*"]
  }
}

/**
 * HTTPS Listener for Web App ALB
 */
resource "aws_alb_listener" "front_443" {
   load_balancer_arn = "${aws_alb.vpc-web-poshmark.arn}"
   port = "443"
   protocol = "HTTP"
   certificate_arn = "arn:aws:iam::666737672436:server-certificate/cloudfront/star_poshmark_com_sha2_2"
   default_action {
     target_group_arn = "${aws_alb_target_group.web-app.arn}"
     type = "forward"
   }
}

resource "aws_lb_listener_rule" "front_443-up-app" {
  listener_arn = "${aws_alb_listener.front_443.arn}"
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = "${aws_alb_target_group.up-app.arn}"
  }

  condition {
    field  = "path-pattern"
    values = ["/api/posts/*"]
  }
}

resource "aws_lb_listener_rule" "front_443-mapp-app" {
  listener_arn = "${aws_alb_listener.front_443.arn}"
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = "${aws_alb_target_group.mapp-app.arn}"
  }

  condition {
    field  = "path-pattern"
    values = ["/mapp/*"]
  }
}

############################################################ Web ALB ############################################################

############################################################ ET ALB ############################################################

/**
 * ET ALB
 */
resource "aws_alb" "vpc-et-poshmark" {
    idle_timeout    = 60
    internal        = false
    name            = "vpc-et-poshmark"
    security_groups = ["${module.sg.production-cloudfront-http-id}","${module.sg.production-app-elb-id}","${module.sg.production-cloudfront-https-id}","${module.sg.production-cloudfront-app-elb-id}"]
    subnets         = ["${module.subnet.apppublicsubnetb-id},${module.subnet.apppublicsubnetc-id}"]

    enable_deletion_protection = true

    access_logs {
        bucket  = "vpc-et-elb-logs.poshmark.com"
        enabled = true
        prefix  = ""
    }

    tags {
        "Elb_Name" = "Vpc-Et-Poshmark"
        "Name" = "Et-Poshmark"
    }
}

/**
 * Target group and EC2 association
*/
resource "aws_lb_target_group_attachment" "et-app-instance" {
    count            = "${var.etapp_count}"
  target_group_arn = "${aws_alb_target_group.et-app.arn}"
  target_id        = "${element(list(module.app.prod-et-app-ids), count.index)}"
  port             = 9292
}

/**
 * Target group for ET ALB
 */
resource "aws_alb_target_group" "et-app" {
  name     = "et-app"
  port     = 9292
  protocol = "HTTP"
  vpc_id   = "${module.vpc.poshmark-id}"

  health_check {
    path = "/api"
  }
}

/**
 * HTTP Listener for ET ALB
 */
resource "aws_alb_listener" "front_80-et" {
   load_balancer_arn = "${aws_alb.vpc-et-poshmark.arn}"
   port = "80"
   protocol = "HTTP"
   default_action {
     target_group_arn = "${aws_alb_target_group.et-app.arn}"
     type = "forward"
   }
}

/**
 * HTTPS Listener for ET ALB
 */
resource "aws_alb_listener" "front_443-et" {
   load_balancer_arn = "${aws_alb.vpc-et-poshmark.arn}"
   port = "443"
   protocol = "HTTP"
   certificate_arn = "arn:aws:iam::666737672436:server-certificate/cloudfront/star_poshmark_com_sha2_2"
   default_action {
     target_group_arn = "${aws_alb_target_group.et-app.arn}"
     type = "forward"
   }
}

############################################################ ET ALB ############################################################

############################################################ Mapp ALB ############################################################

/**
 * Target group for Mapp ALB
 */
resource "aws_alb_target_group" "mapp-app" {
  name     = "mapp-app"
  port     = 9292
  protocol = "HTTP"
  vpc_id   = "${module.vpc.poshmark-id}"

  health_check {
    path = "/api"
  }
}

/**
 * Target group and EC2 association
*/
resource "aws_lb_target_group_attachment" "mapp-app-instance" {
  count            = "${var.mapapp_count}"
  target_group_arn = "${aws_alb_target_group.mapp-app.arn}"
  target_id        = "${element(list(module.app.prod-mapp-app-ids), count.index)}"
  port             = 9292
}


############################################################ Mapp ALB ############################################################


############################################################ UP ALB ############################################################

/**
 * Target group for Mapp ALB
 */
resource "aws_alb_target_group" "up-app" {
  name     = "up-app"
  port     = 9292
  protocol = "HTTP"
  vpc_id   = "${module.vpc.poshmark-id}"

  health_check {
    path = "/api"
  }
}

/**
 * Target group and EC2 association
*/
resource "aws_lb_target_group_attachment" "up-app-instance" {
  count            = "${var.upapp_count}"
  target_group_arn = "${aws_lb_target_group.up-app.arn}"
  target_id        = "${element(list(module.app.prod-up-app-ids), count.index)}"
  port             = 9292
}


############################################################ Mapp ALB ############################################################
