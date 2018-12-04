# ----------------------------
#  Outputs
# ----------------------------
output "repository_name" {
  value       = "${aws_ecr_repository.main.name}"
  description = "ECR repository name"
}

output "repository_arn" {
  value       = "${aws_ecr_repository.main.arn}"
  description = "ECR repository arn"
}

output "repository_id" {
  value       = "${aws_ecr_repository.main.registry_id}"
  description = "ECR repository ID"
}

output "repository_url" {
  value       = "${aws_ecr_repository.main.repository_url}"
  description = "ECR repository URL"
}
