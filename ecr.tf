module "ecr" {
  source                = "./modules/ecr"
  primary_bucket_name   = "eagle-photos-repo"
  secondary_bucket_name = "eagle-photos-repo"
}