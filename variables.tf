variable "vpc_name" {
  type = string
}
variable "vpc_cidr" {
  type = string
}
variable "public_subnet_cidr" {
  type = list(string)
}
variable "private_subnet_cidr" {
  type = list(string)
}
variable "az" {
  type = list(string)
}
variable "sg_name" {
  type = string
}
variable "vpc_id" {
  type = string
}
variable "sg_id" {
  type = string
}

variable "ip_protocol" {
  type = string
}
variable "from_port" {
  type = number
}
variable "to_port" {
  type = number
}

variable "ec2_name" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "ami" {
  type = string
}
variable "sg_id" {
  type = list(string)
}
variable "subnet_id" {
  type = string
}

variable "key_name" {
  type = string
}
variable "enable_public_ip_address" {
  type = bool
}