provider "aws" {
  region = "ap-northeast-1"
}

module "ecr" {
  source          = "../../"
  repository_name = "sample-repository"
}
