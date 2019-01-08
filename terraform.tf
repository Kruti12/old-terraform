provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_s3_bucket" "example" {
  bucket = "testnewnameee"
  acl    = "private"
}

resource "aws_instance" "example" {
  ami           = "ami-076e276d85f524150"
  instance_type = "t2.micro"
  count="2"
  depends_on = ["aws_s3_bucket.example"]

}


