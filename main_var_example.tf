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

resource "aws_s3_bucket" "bucket4" {
  bucket = "${data.aws_caller_identity.current.account_id}-bucket4"
   depends_on = [ aws_s3_bucket.bucket3  ]
}

#Using variable start
variable "bucket_name" {
    type = string
}

resource "aws_s3_bucket" "bucket5" {
  bucket = var.bucket_name
}
# Using variable end

resource "aws_s3_bucket" "bucketX"{
    count = 2
    bucket = "${local.aws_account}-bucket${count.index+7}"
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

