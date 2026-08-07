module "post-processing-bucket" {
  source = "./modules/s3"
  name   = "post-processing-bucket"
}

# module "mounted-bucket" {
#   source = "./modules/s3"
#   name   = "mounted-bucket"
# }