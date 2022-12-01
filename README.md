# terraform_create_s3
terraform init
terraform plan -out example.tfplan
terraform apply example.tfplan

Output:
Outputs:

aws_availability_zones = {
  "all_availability_zones" = tobool(null)
  "exclude_names" = toset(null) /* of string */
  "exclude_zone_ids" = toset(null) /* of string */
  "filter" = toset(null) /* of object */
  "group_names" = toset([
    "us-east-2",
  ])
  "id" = "us-east-2"
  "names" = tolist([
    "us-east-2a",
    "us-east-2b",
    "us-east-2c",
  ])
  "state" = "available"
  "timeouts" = null /* object */
  "zone_ids" = tolist([
    "use2-az1",
# terraform_create_s3
    "use2-az2",
    "use2-az3",
  ])
}
bucket_info = {
  "acceleration_status" = ""
  "acl" = tostring(null)
  "arn" = "arn:aws:s3:::839804220201-bucket1"
  "bucket" = "839804220201-bucket1"
  "bucket_domain_name" = "839804220201-bucket1.s3.amazonaws.com"
  "bucket_prefix" = tostring(null)
  "bucket_regional_domain_name" = "839804220201-bucket1.s3.us-east-2.amazonaws.com"
  "cors_rule" = tolist([])
  "force_destroy" = false
  "grant" = toset([
    {
      "id" = "e953ef61422e1f6330fe42209b490d1758cdc02ab31a3831b4ab8a869dc79bd2"
      "permissions" = toset([
        "FULL_CONTROL",
      ])
      "type" = "CanonicalUser"
      "uri" = ""
    },
  ])
  "hosted_zone_id" = "Z2O1EMRO9K5GLX"
  "id" = "839804220201-bucket1"
  "lifecycle_rule" = tolist([])
  "logging" = tolist([])
  "object_lock_configuration" = tolist([])
  "object_lock_enabled" = false
  "policy" = ""
  "region" = "us-east-2"
  "replication_configuration" = tolist([])
  "request_payer" = "BucketOwner"
  "server_side_encryption_configuration" = tolist([])
  "tags" = tomap({})
  "tags_all" = tomap({})
  "timeouts" = null /* object */
  "versioning" = tolist([
    {
      "enabled" = false
      "mfa_delete" = false
    },
  ])
  "website" = tolist([])
  "website_domain" = tostring(null)
  "website_endpoint" = tostring(null)
}
