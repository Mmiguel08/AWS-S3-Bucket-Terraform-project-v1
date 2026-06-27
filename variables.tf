variable "aws_region" {
  description = "The aws region to deploy in."
  type = "string"
  default = "ap-south-1"
}

variable "aws_se_backet_name" {
  description = "The Unique name of the AWS bucket"
  type = "string"
  default = "cybr-lab-s3-90989"
}

variable "aws_tagging" {
  description = "Resource tags."
  type = map(string)
  default = {
    "Team" = "Security"
    "Environment" = "Dev"
  }
}