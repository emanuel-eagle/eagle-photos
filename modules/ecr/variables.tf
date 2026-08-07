variable "primary_bucket_name" {
    type = string
}

variable "secondary_bucket_name" {
    type = string
}

variable "mutability_setting" {
    type = string
    default = "IMMUTABLE"
}

variable "primary_region" {
    type = string
    default = "us-east-2"
}

variable "secondary_region" {
    type = string
    default = "us-east-1"
}