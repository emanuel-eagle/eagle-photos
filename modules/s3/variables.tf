variable "name" {
    type = string
}

variable "age_threshold_to_storage_class" {
    type = number
    default = 14
}

variable "storage_class" {
    type = string
    default = "GLACIER_IR"
}