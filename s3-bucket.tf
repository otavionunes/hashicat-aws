module "s3_bucket" {
  source = "app.terraform.io/otavn-aws/s3-bucket/aws"
  version = "2.8.0"
  bucket_prefix = "${var.prefix}-"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
