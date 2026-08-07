variable "s3_buckets" {
    type = list(string)
    default = [
        "post-processing-bucket",
        "init-dump-bucket"
    ]
}