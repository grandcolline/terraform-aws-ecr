# ----------------------------
#  Variables
# ----------------------------
variable "region" {
  type        = string
  default     = "ap-northeast-1"
  description = "AWS Region"
}

variable "repository_name" {
  type        = string
  description = "ECR repository name"
}

variable "period" {
  type        = string
  default     = "14"
  description = "Expire period of the pushed images. (days)"
}

