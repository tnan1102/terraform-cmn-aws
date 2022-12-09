### 概要
* 共通利用するAWSリソースを作成するtfファイル
* 主にネットワークやセキュリティグループ

### 利用方法
1. aws configure list --profile terraform

2. terraform init ※moduleを追加する度に必要

3. AWS_PROFILE=terraform terraform plan -var-file=tfvars/terraform.tfvars

4. AWS_PROFILE=terraform terraform apply -var-file=tfvars/terraform.tfvars