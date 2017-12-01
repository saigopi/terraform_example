provider "aws" {
  access_key = "$var.aws_access_key"
  secret_key = "$var.aws_secret_key"
  #region = "us-west-1"
  region = "${var.region}"
}

resource "aws_instance" "webserver" {
  ami  = "${var.images["us-west-1"]}"
  #ami = "ami-b33s93"
  instance_type = "${var.size["small"]}"
  key_name = "${var.key_name}"
}
