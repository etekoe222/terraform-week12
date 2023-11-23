module "server1" {
    source = "../modules/ec2"
    region = "us-east-1"
    ami = "ami-05c13eab67c5d8861"
    instance_type = "t3.small"
    name =  "Dev-from module"
  
}
output "public-ip" {
    value = module.server1.public-ip
}
    