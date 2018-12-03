# ----------------------------
#  Outputs
# ----------------------------
output "registry_name" {
  value       = "${aws_ecr_repository.main.name}"
  description = "ECR repository name"
}

output "registry_arn" {
  value       = "${aws_ecr_repository.main.arn}"
  description = "ECR repository arn"
}

output "registry_id" {
  value       = "${aws_ecr_repository.main.registry_id}"
  description = "ECR repository ID"
}

output "ecr_repository_url" {
  value       = "${aws_ecr_repository.main.repository_url}"
  description = "ECR repository URL"
}
