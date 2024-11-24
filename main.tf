provider "aws" {
  region = "eu-north-1"  # Choose your preferred region
}

# Security group allowing SSH and HTTP access
resource "aws_security_group" "ssh_http_access" {
  name_prefix = "allow_ssh_http_"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open SSH to the world (for demo purposes)
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Open HTTP to the world
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# EC2 instance setup
resource "aws_instance" "web_server" {
  ami           = "ami-0658158d7ba8fd573"  # Amazon Linux 2 AMI ID (change based on region)
  instance_type = "t3.micro"
  key_name      = "Net"  # Replace with your key name

  security_groups = [aws_security_group.ssh_http_access.name]

  tags = {
    Name = "INSTANCE_NAME"
  }
}

# Output the public IP of the instance
output "instance_public_ip" {
  value = aws_instance.web_server.public_ip
}
