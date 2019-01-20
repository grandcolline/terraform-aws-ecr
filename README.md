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
|tag_prefixes|list|Not expire image this tagged.|`["latest", "v"]`|
|period|string|Expire period of the pushed images. (days)|14|

## Outputs

|Name|Description|
|:-:|:-:|
|registry_name|ECR repository name|
|registry_arn|ECR repository arn|
|registry_id|ECR repository ID|
|repository_url|ECR repository URL|

## Description

ECRのRepositoryを作成します。Lifecycleのルールは以下の通りです。

1. tag_prefixesで指定されたtagのprifixは削除しない（最大99999個保存される）
2. それ以外のtagについては、periodで指定された期間保存される。

