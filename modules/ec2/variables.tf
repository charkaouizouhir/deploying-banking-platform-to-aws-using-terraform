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