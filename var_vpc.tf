variable "vpc_name" {
  type = string 
  default = "georgevpc"
}
variable "vpc_cidr_block" {
  type = string 
  default = "10.0.0.0/16"
}
variable "vpc_availability_zones" {
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}
variable "vpc_public_subnets" {
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}




  


# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type = bool
  default = true
}