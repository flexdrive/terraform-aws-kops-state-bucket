output "bucket_name" {
  value       = "${aws_s3_bucket.default.bucket}"
  description = "S3 bucket name"
}

output "bucket_region" {
  value       = "${aws_s3_bucket.default.region}"
  description = "S3 bucket region"
}

output "bucket_domain_name" {
  value       = "${aws_s3_bucket.default.bucket_domain_name}"
  description = "S3 bucket domain name"
}

output "bucket_id" {
  value       = "${aws_s3_bucket.default.id}"
  description = "S3 bucket ID"
}

output "bucket_arn" {
  value       = "${aws_s3_bucket.default.arn}"
  description = "S3 bucket ARN"
}