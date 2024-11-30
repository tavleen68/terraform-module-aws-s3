variable "bucket_name" {
  description = "The name of the S3 bucket."
  type        = string
  default     = null
}
variable "lifecycle_rule_id" {
  description = "lifecycle rule"
  type        = string
  default     = null
}
variable "lifecycle_rule_status" {
  description = "lifecycle rule status"
  type        = string
  default     = null
}
variable "lifecycle_rule_expiration_days" {
  description = "lifecycle_rule_expiration_days"
  type        = number
  default     = null
}
variable "lifecycle_rule_expiration_expired_object_delete_marker" {
  description = "lifecycle_rule_expiration_expired_object_delete_marker"
  type        = bool
  default     = null
}
variable "versioning_status" {
  description = "The versioning status for the S3 bucket."
  type        = string
  default     = null
}
variable "bucket_acl_configuration_acl_grantee_type" {
  description = "bucket_acl_configuration_acl_grantee_type"
  type        = string
  default     = null
}
variable "bucket_acl_configuration_acl_permission" {
  description = "bucket_acl_configuration_acl_permission"
  type        = string
  default     = null
}
variable "bucket_acl_configuration_acl_grantee_id" {
  description = "bucket_acl_configuration_acl_grantee_id"
  type        = string
  default     = null
}
variable "s3_public_access_settings_block_public_acls" {
  description = "s3_public_access_settings_block_public_acls"
  type        = string
  default     = null
}
variable "s3_public_access_settings_block_public_policy" {
  description = "s3_public_access_settings_block_public_policy"
  type        = string
  default     = null
}
variable "s3_public_access_settings_ignore_public_acls" {
  description = "s3_public_access_settings_ignore_public_acls"
  type        = string
  default     = null
}
variable "s3_public_access_settings_restrict_public_buckets" {
  description = "s3_public_access_settings_restrict_public_buckets"
  type        = string
  default     = null
}
variable "sse_algorithm" {
  description = "The server-side encryption algorithm."
  type        = string
  default     = "AES256"
}
variable "kms_master_key_arn" {
  description = "ARN of the KMS key to encrypt the bucket"
  type        = string
  default     = "AES256"
}
variable "apply_bucket_key_enabled" {
  description = "Flag to enable bucket key for server-side encryption."
  type        = bool
  default     = null
}
variable "create_s3_bucket_lifecycle" {
  description = "Flag to control the creation of S3 bucket_lifecycle."
  type        = bool
  default     = null
}
variable "create_s3_bucket_acl" {
  description = "Flag to control the creation of S3 bucket_acl."
  type        = bool
  default     = null
}
variable "create_s3_bucket_policy" {
  description = "Flag to control the creation of bucket policy."
  type        = bool
  default     = null
}
variable "create_s3_bucket_website_configuration" {
  description = "Flag to control the creation of bucket website configuration."
  type        = bool
  default     = null
}
variable "create_s3_public_access_block" {
  description = "Flag to control the creation of bucket public access."
  type        = bool
  default     = null
}
variable "policy_file_path" {
  description = "Path to the policy file (policy.tpl)."
  type        = string
  default     = null
}
variable "include_additional_grant" {
  description = "Flag to include an additional grant in the S3 bucket ACL."
  type        = bool
  default     = null
}
variable "object_ownership" {
  description = "The object ownership rule."
  type        = string
  default     = null
}
variable "website_index_document_suffix" {
  description = "Suffix of the index document for the S3 website"
  type        = string
  default     = null
}
variable "upload_files" {
  description = "Boolean to decide whether to upload files or not"
  type        = bool
  default     = true
}
variable "files_to_upload" {
  description = "List of files to upload"
  type        = list(string)
  default     = []
}
