variable "region" {
    type = string
    default = "ap-south-1"
  
}

variable "cidr_block" {
    type = string
  
}

variable "subnets_cidr" {
    type = list(string)
  
}

variable "subnet_az" {
    type = list(string)

}
variable "subnet_names" {
    type = list(string)
  
}
