variable "region" {
    default = "ap-south-1"
}

variable "env" {
}

variable "ami_id" {
}

variable "instance_type" {
  type = string
  validation {
    condition = contains(["t3.nano", "t3.micro"], var.instance_type)
    error_message = "Only t3.nano or t3.micro are allowed."
  }
}

variable "num_of_vm" {
    type = number
}

variable "availablity_zones" {
    type = list(string)
    default = ["ap-south-1a", "ap-south-1b"]
    sensitive = true
}

#variable "availabilty_zones" {
    #type = map(string)
    #default = {
    #"ap-south-1a" = "[detail]"
    #"ap-south-1b" = "[detail]"
    #}
#}

#availability_zone = var.availability_zones[var.region]