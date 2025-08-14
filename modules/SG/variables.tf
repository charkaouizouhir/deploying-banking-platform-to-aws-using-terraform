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