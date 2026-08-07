resource "aws_ecr_repository" "repo" {
  name                 = "eagle-photos-registry"
  image_tag_mutability = "IMMUTABLE"

}