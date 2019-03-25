# ----------------------------
#  Variables
# ----------------------------
variable "repository_name" {
  type        = "string"
  description = "ECR repository name"
}

variable "period" {
  type        = "string"
  default     = "14"
  description = "Expire period of the pushed images. (days)"
}
