# Simple ECR Repository with Lifecycle

This module creates an ECR Repository

## Usage

```hcl
module "ecr" {
  source          = "grandcolline/ecr/aws"
  repository_name = "sample-repository"
}
```

## Variables

|Name|Type|Description|Default|
|:-:|:-:|:-:|:-:|
|repository_name|string|ECR repository name.||
|tag_prefixes|list|Not expire tag prifixes.|`["latest", "v"]`|
|period|string|period of the pushed images. (days)|14|

## Outputs

|Name|Description|
|:-:|:-:|
|registry_name|ECR repository name|
|registry_arn|ECR repository arn|
|registry_id|ECR repository ID|
|repository_url|ECR repository URL|

