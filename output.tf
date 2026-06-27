output "s3_bucket_id" {
  description = "Outup s3 bucket id"
  value = "Bucket Id:${aws_s3_backet.cybr-lab-aws_s3_bucket.id}"
}

output "s3_backet_arn" {
  description = "Outups S3 bucket arn"
  value = "Bucket ARN: ${aws_s3_backet.cybr-lab-aws_s3_bucket.arn}"
}

output "s3_backet_domain" {
  description = "Outputs Se bucket domain"
  value = "Bucket domain: ${aws_s3_backet.cybr-lab-aws_s3_bucket.backet_domain_name}"
}