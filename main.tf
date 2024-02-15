# Configure AWS Provider
provider "aws" {
  region = "us-east-1" # Replace with your desired region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

# Define EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = "ami-0123456789abcdef0" # Replace with your desired AMI
  instance_type = "t2.micro" # Replace with your desired instance type
  vpc_security_group_ids = ["sg-0123456789abcdef0"] # Replace with your security group ID

  # Additional configuration options (e.g., tags, user data)

}
