## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.bucket_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_lifecycle_configuration.lifecycle_configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration) | resource |
| [aws_s3_bucket_ownership_controls.bucket_ownership_controls](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.bucket_public_access_block](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.encryption_configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.bucket_versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_bucket_website_configuration.website_configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration) | resource |
| [aws_canonical_user_id.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/canonical_user_id) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_bucket_key_enabled"></a> [apply\_bucket\_key\_enabled](#input\_apply\_bucket\_key\_enabled) | Flag to enable bucket key for server-side encryption. | `bool` | `null` | no |
| <a name="input_bucket_acl_configuration_acl_grantee_id"></a> [bucket\_acl\_configuration\_acl\_grantee\_id](#input\_bucket\_acl\_configuration\_acl\_grantee\_id) | bucket\_acl\_configuration\_acl\_grantee\_id | `string` | `null` | no |
| <a name="input_bucket_acl_configuration_acl_grantee_type"></a> [bucket\_acl\_configuration\_acl\_grantee\_type](#input\_bucket\_acl\_configuration\_acl\_grantee\_type) | bucket\_acl\_configuration\_acl\_grantee\_type | `string` | `null` | no |
| <a name="input_bucket_acl_configuration_acl_permission"></a> [bucket\_acl\_configuration\_acl\_permission](#input\_bucket\_acl\_configuration\_acl\_permission) | bucket\_acl\_configuration\_acl\_permission | `string` | `null` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | The name of the S3 bucket. | `string` | `null` | no |
| <a name="input_create_s3_bucket_acl"></a> [create\_s3\_bucket\_acl](#input\_create\_s3\_bucket\_acl) | Flag to control the creation of S3 bucket\_acl. | `bool` | `null` | no |
| <a name="input_create_s3_bucket_lifecycle"></a> [create\_s3\_bucket\_lifecycle](#input\_create\_s3\_bucket\_lifecycle) | Flag to control the creation of S3 bucket\_lifecycle. | `bool` | `null` | no |
| <a name="input_create_s3_bucket_policy"></a> [create\_s3\_bucket\_policy](#input\_create\_s3\_bucket\_policy) | Flag to control the creation of bucket policy. | `bool` | `null` | no |
| <a name="input_create_s3_bucket_website_configuration"></a> [create\_s3\_bucket\_website\_configuration](#input\_create\_s3\_bucket\_website\_configuration) | Flag to control the creation of bucket website configuration. | `bool` | `null` | no |
| <a name="input_create_s3_public_access_block"></a> [create\_s3\_public\_access\_block](#input\_create\_s3\_public\_access\_block) | Flag to control the creation of bucket public access. | `bool` | `null` | no |
| <a name="input_include_additional_grant"></a> [include\_additional\_grant](#input\_include\_additional\_grant) | Flag to include an additional grant in the S3 bucket ACL. | `bool` | `null` | no |
| <a name="input_kms_master_key_arn"></a> [kms\_master\_key\_arn](#input\_kms\_master\_key\_arn) | ARN of the KMS key to encrypt the bucket | `string` | `"AES256"` | no |
| <a name="input_lifecycle_rule_expiration_days"></a> [lifecycle\_rule\_expiration\_days](#input\_lifecycle\_rule\_expiration\_days) | lifecycle\_rule\_expiration\_days | `number` | `null` | no |
| <a name="input_lifecycle_rule_expiration_expired_object_delete_marker"></a> [lifecycle\_rule\_expiration\_expired\_object\_delete\_marker](#input\_lifecycle\_rule\_expiration\_expired\_object\_delete\_marker) | lifecycle\_rule\_expiration\_expired\_object\_delete\_marker | `number` | `null` | no |
| <a name="input_lifecycle_rule_id"></a> [lifecycle\_rule\_id](#input\_lifecycle\_rule\_id) | lifecycle rule | `string` | `null` | no |
| <a name="input_lifecycle_rule_status"></a> [lifecycle\_rule\_status](#input\_lifecycle\_rule\_status) | lifecycle rule status | `string` | `null` | no |
| <a name="input_object_ownership"></a> [object\_ownership](#input\_object\_ownership) | The object ownership rule. | `string` | `null` | no |
| <a name="input_policy_file_path"></a> [policy\_file\_path](#input\_policy\_file\_path) | Path to the policy file (policy.tpl). | `string` | `null` | no |
| <a name="input_s3_public_access_settings_block_public_acls"></a> [s3\_public\_access\_settings\_block\_public\_acls](#input\_s3\_public\_access\_settings\_block\_public\_acls) | s3\_public\_access\_settings\_block\_public\_acls | `string` | `null` | no |
| <a name="input_s3_public_access_settings_block_public_policy"></a> [s3\_public\_access\_settings\_block\_public\_policy](#input\_s3\_public\_access\_settings\_block\_public\_policy) | s3\_public\_access\_settings\_block\_public\_policy | `string` | `null` | no |
| <a name="input_s3_public_access_settings_ignore_public_acls"></a> [s3\_public\_access\_settings\_ignore\_public\_acls](#input\_s3\_public\_access\_settings\_ignore\_public\_acls) | s3\_public\_access\_settings\_ignore\_public\_acls | `string` | `null` | no |
| <a name="input_s3_public_access_settings_restrict_public_buckets"></a> [s3\_public\_access\_settings\_restrict\_public\_buckets](#input\_s3\_public\_access\_settings\_restrict\_public\_buckets) | s3\_public\_access\_settings\_restrict\_public\_buckets | `string` | `null` | no |
| <a name="input_sse_algorithm"></a> [sse\_algorithm](#input\_sse\_algorithm) | The server-side encryption algorithm. | `string` | `"AES256"` | no |
| <a name="input_versioning_status"></a> [versioning\_status](#input\_versioning\_status) | The versioning status for the S3 bucket. | `string` | `null` | no |
| <a name="input_website_index_document_suffix"></a> [website\_index\_document\_suffix](#input\_website\_index\_document\_suffix) | Suffix of the index document for the S3 website | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | The name of the AWS s3 bucket |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | The name of the AWS s3 bucket |
