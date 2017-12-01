variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {
  type = "string"
  default = "admin-key-pair-uswest1"
}

variable "region" {
  type = "string"
  default = "us-west-1"
}

variable "zones" {
  type = "list"
  default = ["us-west-1a", "us-west-1b"]
}

variable "images" {
  type = "map"
  default = {
    us-west-1 = "ami-data1"
    us-west-2 = "ami-data2"
  }
}
variable "size" {
  type     = "map"
  default  = {
    tiny   = "t2.nano"
    small  = "t2.micro"
    medium = "t2.medium"
  }
}
