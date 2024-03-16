resource "aws_launch_template" "My_Instance_Template" {
  name = "My_Instance_Template"

  block_device_mappings {
    device_name = "/dev/sdf"

    ebs {
      volume_size = 20
    }
  }

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 4
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = true
  disable_api_termination = true

  ebs_optimized = true

  
  
 

  image_id = "ami-07bff6261f14c3a45"

  instance_initiated_shutdown_behavior = "terminate"

  instance_market_options {
    market_type = "spot"
  }

  instance_type = "t2.micro"

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 1
    instance_metadata_tags      = "enabled"
  }

  monitoring {
    enabled = true
  }

  network_interfaces {
    associate_public_ip_address = true
  }

  placement {
    availability_zone = "us-west-2"
  }



  vpc_security_group_ids = ["sg-0e6c0a8d3bf13dfa4"]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "Template_tag"
    }
  }

  user_data = filebase64("script.sh")
}
resource "aws_instance" "web" {

  launch_template {
    id      = "lt-0d087a11cb9baf954"
    version = "1"                        
  }

 
}



