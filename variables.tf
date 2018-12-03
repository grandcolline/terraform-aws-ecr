# ----------------------------
#  Variables
# ----------------------------
variable "repository_name" {
  type        = "string"
  default     = "sample"
  description = "ECR repository name"
}

variable "tagprefixes" {
  type        = "list"
  default     = ["latest", "v"]
  description = "Not expire tag prifixes."
}

variable "period" {
  type        = "string"
  default     = "14"
  description = "period of the pushed images. (days)"
}
