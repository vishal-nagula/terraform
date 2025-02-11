variable "ami_id" {
    type = string
    default = "ami-0e1bed4f06a3b463d"
    description = "this is ubuntu server"
  
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}


variable "ec2_tags" {
type = map
default = {
    Project ="expence"
    Component = "backend"
    Environment = "dev"
    Name = "expence-backend-dev"
}
}

variable "environment" {
  type = string
  default = "prod"
}

variable "instance" {
    default =  ["mysql","backend","frontend"]
  
}

variable "zone_id" {
    default =  "Z07388823G3GMN532XDL0"
}

variable "domain_name" {
  default = "devopswithvishal.com"
}