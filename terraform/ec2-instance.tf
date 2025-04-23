# ec2-instance.tf

resource "aws_instance" "jenkins" {
  ami           = var.ami # Update this as per your region Note: This AMI is Should be use in ap-south-1 region only
  instance_type = var.instance_type
  subnet_id     = var.subnet_id  # Use the public subnet ID here
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]  # Use the security group ID here
  key_name        = "source"
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install openjdk-17-jdk -y
              sudo apt install maven wget unzip -y
              curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
              /usr/share/keyrings/jenkins-keyring.asc > /dev/null
              echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
              https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
              /etc/apt/sources.list.d/jenkins.list > /dev/null
              sudo apt-get update
              sudo apt-get install jenkins -y
              systemctl enable jenkins
              EOF

  tags = {
    Name = "Jenkins-Server"
  }
}
