variable "bucket1_name" {
  description = "Name of the first S3 bucket for Terraform state"
  type        = string
  default     = "mj-tfstate-bucket-1"
}

variable "bucket2_name" {
  description = "Name of the second S3 bucket for Terraform state"
  type        = string
  default     = "mj-tfstate-bucket-2"
}

variable "environment" {
  description = "Environment tag for the buckets"
  type        = string
  default     = "dev"
}
