provider "aws" {
  version = "~> 2.17"

  alias  = "s3"
  region = "${var.region}"
}

module "s3_label" {
  source     = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.3.3"
  namespace  = "${var.namespace}"
  name       = "${var.name}"
  stage      = "${var.stage}"
  delimiter  = "${var.delimiter}"
  attributes = "${var.attributes}"
  tags       = "${var.tags}"
}

resource "aws_s3_bucket" "default" {
  provider = "aws.s3"

  bucket        = "${module.s3_label.id}"
  acl           = "${var.acl}"
  region        = "${var.region}"
  force_destroy = "${var.force_destroy}"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = "${module.s3_label.tags}"
}

resource "aws_s3_bucket_public_access_block" "default" {
  provider = "aws.s3"

  count  = "${var.block_public_access_enabled == "true" ? 1 : 0}"
  bucket = "${aws_s3_bucket.default.id}"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}