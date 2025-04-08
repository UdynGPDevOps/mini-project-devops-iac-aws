resource "aws_security_group" "flask_sg" {
  name        = "flask-sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "flask_instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.flask_sg.name]
  associate_public_ip_address = true

  user_data = file("${path.module}/deploy.sh")

  tags = {
    Name = "FlaskAppInstance"
  }
}
