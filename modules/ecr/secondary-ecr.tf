resource "aws_ecr_repository" "secondary" {
  name                 = var.secondary_bucket_name
  region = var.secondary_region
  image_tag_mutability = var.mutability_setting
}