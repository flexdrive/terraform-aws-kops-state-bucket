variable "namespace" {
  type        = "string"
  description = "Namespace (e.g. `eg` or `cp`)"
}

variable "stage" {
  type        = "string"
  description = "Stage (e.g. `prod`, `dev`, `staging`)"
}

variable "name" {
  type        = "string"
  default     = "kops-state"
  description = "Name (e.g. `kops-state`)"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name`, and `attributes`"
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
}

variable "region" {
  type        = "string"
  description = "AWS Region the S3 bucket should reside in"
  default     = "us-east-1"
}

variable "acl" {
  type        = "string"
  description = "The canned ACL to apply to the S3 bucket"
  default     = "private"
}

variable "block_public_access_enabled" {
  type        = "string"
  description = "Block all public access from bucket level"
  default     = "true"
}

variable "force_destroy" {
  type        = "string"
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without errors. These objects are not recoverable"
  default     = false
}
