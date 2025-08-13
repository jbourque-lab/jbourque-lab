#terraform-modules/ec2-instance/variables.tf

variable "ami_id" {
  description = "The AMI ID for the EC2 Instance"
}

variable "instance_type" {
  description = "The instance type of the EC2 Instance"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
}
