#Resources

resource "aws_s3_bucket" "bucket1" {
  bucket = "${data.aws_caller_identity.current.account_id}-bucket1"
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

