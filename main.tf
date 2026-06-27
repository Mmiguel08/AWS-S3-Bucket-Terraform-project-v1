resource "aws_s3_bucket" "cybr_lab_aws_s3_bucket" {
  bucket = var.aws_se_backet_name
  tags   = var.aws_tagging
}
