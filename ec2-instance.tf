# ec2-instance.tf

resource "aws_instance" "jenkins" {
  ami           = "ami-06f621d90fa29f6d0" # Update this as per your region
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id  # Use the public subnet ID here
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]  # Use the security group ID here

  user_data = <<-EOF
              #!/bin/bash
              sudo wget -O /etc/yum.repos.d/jenkins.repo \
              https://pkg.jenkins.io/redhat-stable/jenkins.repo
              sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
              sudo yum upgrade -y
              # Add required dependencies for the jenkins package
              sudo yum install fontconfig java-17-openjdk -y
              sudo yum install jenkins -y
              sudo systemctl daemon-reload
              EOF

  tags = {
    Name = "Jenkins-Server"
  }
}

