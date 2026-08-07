resource "aws_ecr_repository" "primary" {
  name                 = var.primary_bucket_name
  region = var.primary_region
  image_tag_mutability = var.mutability_setting
}