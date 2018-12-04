# ---------------------------------
#  ECRレポジトリ
# ---------------------------------
resource "aws_ecr_repository" "main" {
  name = "${var.repository_name}"
}

# ---------------------------------
#  ライフサイクルポリシー
# ---------------------------------
resource "aws_ecr_lifecycle_policy" "main" {
  policy     = "${data.template_file.lifecycle_policy.rendered}"
  repository = "${aws_ecr_repository.main.name}"
}

data "template_file" "lifecycle_policy" {
  template = "${file("${path.module}/lifecycle-policy.tpl.json")}"

  vars {
    tag_prefixes = "${jsonencode(var.tag_prefixes)}"
    period       = "${var.period}"
  }
}
