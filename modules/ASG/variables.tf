variable "name" {

}
variable "ami_id" {
    
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  default = ""
}
variable "security_groups" {
  type    = list(string)
}
variable "subnets" {
  type = list(string)
}
variable "desired_capacity" {
  default = 1
}
variable "min_size" {
  default = 1
}
variable "max_size" {
  default = 5
}
variable "target_group_arns" {
  type = list(string)
  default = []
}
variable "user_data" {
  default = ""
}
