# Define the provider
provider "aws" {
  region = "us-west-2"
}

# Define the EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI ID (region-specific)
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

# Outputs
output "instance_id" {
  value = aws_instance.example.id
}

output "instance_public_ip" {
  value = aws_instance.example.public_ip
}
