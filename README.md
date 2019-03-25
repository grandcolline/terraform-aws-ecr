# Simple ECR Repository with Lifecycle

[![CircleCI](https://circleci.com/gh/grandcolline/terraform-aws-ecr.svg?style=svg)](https://circleci.com/gh/grandcolline/terraform-aws-ecr)

## Description

This module creates an ECR Repository & Lifecycle.

### Lifecycle Rule

1. This tag prefix is not expire.
* latest
* v[0-9]

2. Expire at specified time. (Default: 14days)

## Usage

```hcl
module "ecr" {
  source          = "grandcolline/ecr/aws"
  version         = "0.1.0"

  repository_name = "sample-repository"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| repository\_name | ECR repository name | string | n/a | yes |
| period | Expire period of the pushed images. (days) | string | `"14"` | no |

## Outputs

| Name | Description |
|------|-------------|
| repository\_id | ECR repository ID |
| repository\_name | ECR repository name |
| repository\_arn | ECR repository arn |
| repository\_url | ECR repository URL |

