#terraform-project/main.tf

provider "aws" {
  region = "us-east-2"
}

module "web_server" {
  source        = "../terraform-modules/ec2-instance"
  ami_id        = "ami-00394e6ed6d39db87"
  instance_type = "t2.micro"
  instance_name = "WebServer"
}

module "database_server" {
  source        = "../terraform-modules/ec2-instance"
  ami_id        = "ami-00394e6ed6d39db87"
  instance_type = "t2.micro"
  instance_name = "DatabaseServer"
}

output "web_server_ip" {
  value = module.web_server.public_ip
}

output "database_server_ip" {
  value = module.database_server.public_ip
}
