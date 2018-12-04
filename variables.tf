# ----------------------------
#  Variables
# ----------------------------
variable "repository_name" {
  type        = "string"
  description = "ECR repository name"
}

variable "tag_prefixes" {
  type        = "list"
  default     = ["latest", "v"]
  description = "Not expire image this tagged."
}

variable "period" {
  type        = "string"
  default     = "14"
  description = "Expire period of the pushed images. (days)"
}
