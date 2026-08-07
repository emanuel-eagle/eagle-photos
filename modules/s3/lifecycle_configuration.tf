resource "aws_s3_bucket_lifecycle_configuration" "bucket_lifecycle_config" {
  bucket = aws_s3_bucket.bucket.bucket

  rule {
    id = "Move all raw images to Glacier Storage"

    filter {
      tag {
        key = "raw" 
        value = true
      }
    }

    status = "Enabled"

    transition {
      days          = var.age_threshold_to_storage_class
      storage_class = var.storage_class
    }
  }
}