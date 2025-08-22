variable "internal" {
  type    = bool
  default = false
}
variable "subnets" {
  type = list(string)
}
variable "security_groups" {
  type = list(string)
  
}

variable "enable_deletion_protection" {
  type    = bool
  default = false
}


variable "vpc_id" {

}
variable "target_port" {
  default = 80
}

variable "target_protocol" {
  default = "HTTP"
}

variable "health_check_path" {
  default = "/"
}

variable "listener_port" {
  default = 80
}
variable "listener_protocol" {
  default = "HTTP"
}
