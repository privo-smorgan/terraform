variable "EC2NAME" {
    type        = string
    description = "Name of the instance"
}

variable "AMI" {
    type        = string
    description = "AMI to use on the server instance"
}

variable "INSTANCETYPE" {
    type        = string
    description = "Instance type"
} 

variable "ENVIRONMENT" {
    type        = string
    description = "Environment tag"
}