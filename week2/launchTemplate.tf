resource "aws_launch_template" "web_lt" {
  name = "web_lt"

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = 8
    }
  }

  image_id = data.aws_ami.amzl2.id

  instance_initiated_shutdown_behavior = "terminate"

  instance_market_options {
    market_type = "spot"
  }

  instance_type = "t3.micro"

  key_name = var.key_pair

  placement {
    availability_zone = "us-west-2a"
  }


  vpc_security_group_ids = [aws_security_group.web_ec2_sg.id]

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = format(
        "%s-%s-web_lt",
        var.nickname,
        var.environment
    )
    }
  }

  user_data = filebase64("./script/userdata.sh")
}