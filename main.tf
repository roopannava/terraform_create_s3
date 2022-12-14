#https://developer.hashicorp.com/terraform/language/functions
#Locals
locals {
  l = ["one","two","three"]
  upper_list = [ for item in local.l: upper(item)]
  #This will create a map
  upper_map =  {for item in local.l: item => upper(item)}
  person = {
    name : "ewewe"
  }
}




#Resources

resource "aws_s3_bucket" "bucket1" {
  bucket = "${data.aws_caller_identity.current.account_id}-bucket1"
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "${data.aws_caller_identity.current.account_id}-bucket2"
}


resource "aws_s3_bucket" "bucket3" {
  bucket = "${data.aws_caller_identity.current.account_id}-bucket3"
  tags = {
    dependency = aws_s3_bucket.bucket2.arn
  }
}


# Data sources
# Objects NOT managed by Terraform.
data "aws_caller_identity" "current" {
}

data "aws_availability_zones" "available" {
	state = "available"
}

output "bucket_info" {
    value = aws_s3_bucket.bucket1
}

output "aws_availability_zones" {
    value = data.aws_availability_zones.available
}

output "iterations" {
    value = local.upper_list
}

output "heredoc" {
    value = <<-EOT
        this is a test
    EOT
}

output "directive" {
    value = <<-EOT
    this is a test
    %{ if local.person.name == ""}
        Sorry
    %{ else }
        Hi
    %{ endif }        
    EOT
}
