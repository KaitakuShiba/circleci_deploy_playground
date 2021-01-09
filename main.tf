# ecr作成
resource "aws_ecr_repository" "nginx_ecr" {
  name                 = "nginx_ecr"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

provider "http" {}

data "http" "ifconfig" {
  url = "http://ipv4.icanhazip.com/"
}
locals {
  ip = chomp(data.http.ifconfig.body)
}

# Security Group作成
resource "aws_security_group" "example_security" {
  name = "example_security"

  # inbound
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${local.ip}/32"]
  }

  # outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
