
##### API App #####

resource "aws_elb" "vpc-poshmark" {
    name                        = "vpc-poshmark"
    subnets                     = ["${module.subnet.apppublicsubnetb-id},${module.subnet.apppublicsubnetc-id}"]
    security_groups             = ["${module.sg.production-cloudfront-http-id}","${module.sg.production-app-elb-id}","${module.sg.production-cloudfront-https-id}","${module.sg.production-cloudfront-app-elb-id}"]
    instances                   = ["${split(",", module.app.prod-api-app-ids)}"]
    cross_zone_load_balancing   = true
    idle_timeout                = 60
    connection_draining         = false
    connection_draining_timeout = 300
    internal                    = false

    access_logs {
        bucket        = "vpc-elb-logs.poshmark.com"
        bucket_prefix = ""
        interval      = 5
    }

    listener {
        instance_port      = 9292
        instance_protocol  = "http"
        lb_port            = 443
        lb_protocol        = "https"
        ssl_certificate_id = "arn:aws:iam::666737672436:server-certificate/cloudfront/star_poshmark_com_sha2_2"
    }

    listener {
        instance_port      = 9292
        instance_protocol  = "http"
        lb_port            = 80
        lb_protocol        = "http"
        ssl_certificate_id = ""
    }

    health_check {
        healthy_threshold   = 2
        unhealthy_threshold = 5
        interval            = 6
        target              = "HTTP:9292/api"
        timeout             = 5
    }

    tags {
        "Type" = "App"
        "Elb_Name" = "Vpc-Poshmark"
        "Cluster" = "App"
    }
}

##### UP App #####

resource "aws_elb" "vpc-up-poshmark" {
    name                        = "vpc-up-poshmark"
    subnets                     = ["${module.subnet.apppublicsubnetb-id},${module.subnet.apppublicsubnetc-id}"]
    security_groups             = ["${module.sg.production-cloudfront-http-id}","${module.sg.production-app-elb-id}","${module.sg.production-cloudfront-https-id}","${module.sg.production-cloudfront-app-elb-id}"]
    instances                   = ["${split(",", module.app.prod-up-app-ids)}"]
    cross_zone_load_balancing   = true
    idle_timeout                = 60
    connection_draining         = true
    connection_draining_timeout = 300
    internal                    = false

    access_logs {
        bucket        = "vpc-up-elb-logs.poshmark.com"
        bucket_prefix = ""
        interval      = 5
    }

    listener {
        instance_port      = 9292
        instance_protocol  = "http"
        lb_port            = 443
        lb_protocol        = "https"
        ssl_certificate_id = "arn:aws:iam::666737672436:server-certificate/cloudfront/star_poshmark_com_sha2_2"
    }

    listener {
        instance_port      = 9292
        instance_protocol  = "http"
        lb_port            = 80
        lb_protocol        = "http"
        ssl_certificate_id = ""
    }

    health_check {
        healthy_threshold   = 2
        unhealthy_threshold = 5
        interval            = 6
        target              = "HTTP:9292/api"
        timeout             = 5
    }

    tags {
        "Type" = "UploadApp"
        "Elb_Name" = "Vpc-Up-Poshmark"
        "Cluster" = "App"
    }
}
