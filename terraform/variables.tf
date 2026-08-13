variable "rds-password" {
    description = "rds password"
    type = string
    default = "Cloud123"
  
}
variable "rds-username" {
    description = "rds username"
    type = string
    default = "admin"
  
}
variable "ami" {
    description = "ami"
    type = string
    default = "ami-0521cb2d60cfbb1a6"
  
}
variable "instance-type" {
    description = "instance-type"
    type = string
    default = "t3.micro"
  
}
variable "key-name" {
    description = "keyname"
    type = string
    default = "key"
  
}
variable "backupr-retention" {
    type = number
    default = "7"
  
}
