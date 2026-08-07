resource "aws_s3_bucket" "buckets" {
  bucket = "eagle-photos-${vars.name}"
}