resource "aws_s3_bucket" "bucket" {
  bucket = "eagle-photos-${var.name}"
}