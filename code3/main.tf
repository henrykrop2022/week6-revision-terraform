# Create a new GitLab Lightsail Instance
resource "aws_lightsail_instance" "my-instance" {
  name              = "henry-lab"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = file("install.sh")
  
  tags = {
    env = "QA"
  }
}

resource "aws_iam_user" "lb" {
    name = "u5bt2024"
}

resource "aws_iam_group" "cloudteam" {
  name = "cloudteam"
}