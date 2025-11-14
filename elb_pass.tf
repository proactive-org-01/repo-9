resource "aws_lb" "pass_case" {
  name               = "pass-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = ["subnet-0123456789abcdef0", "subnet-0fedcba9876543210"]
}

resource "aws_lb_target_group" "pass_tg" {
  name     = "pass-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "vpc-0123456789abcdef0"

  target_group_attributes = {
    "idle_timeout.timeout_seconds" = "300" # ✅ Meets rule
  }
}
