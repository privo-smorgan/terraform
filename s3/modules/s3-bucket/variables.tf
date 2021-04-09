variable "BUCKETNAME" {
    type        = string
    description = "Name of the bucket"
}

variable "ACL" {
    type        = string
    description = "Access control policy"
}

variable "ENVIRONMENT" {
    type        = string
    description = "Environment tag"
}