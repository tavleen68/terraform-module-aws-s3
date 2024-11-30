resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.bucket.id

  versioning_configuration {
    status = var.versioning_status
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "encryption_configuration" {
  bucket = aws_s3_bucket.bucket.id
  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = var.kms_master_key_arn
      sse_algorithm     = var.sse_algorithm
    }
    bucket_key_enabled = var.apply_bucket_key_enabled
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "lifecycle_configuration" {
  count  = var.create_s3_bucket_lifecycle ? 1 : 0
  bucket = aws_s3_bucket.bucket.id

  rule {
    id     = var.lifecycle_rule_id
    status = var.lifecycle_rule_status

    expiration {
      days                         = var.lifecycle_rule_expiration_days
      expired_object_delete_marker = var.lifecycle_rule_expiration_expired_object_delete_marker
    }
  }
}

resource "aws_s3_bucket_policy" "b" {
  count  = var.create_s3_bucket_policy ? 1 : 0
  bucket = aws_s3_bucket.bucket.id
  policy = file(var.policy_file_path)
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  count  = var.create_s3_bucket_acl ? 1 : 0
  bucket = aws_s3_bucket.bucket.id
  access_control_policy {
    grant {
      grantee {
        id   = data.aws_canonical_user_id.current.id
        type = var.bucket_acl_configuration_acl_grantee_type
      }
      permission = var.bucket_acl_configuration_acl_permission
    }

    # Conditionally include the additional grant block if the variable is set to true
    dynamic "grant" {
      for_each = var.include_additional_grant ? [1] : []
      content {
        grantee {
          id   = var.bucket_acl_configuration_acl_grantee_id
          type = var.bucket_acl_configuration_acl_grantee_type
        }
        permission = var.bucket_acl_configuration_acl_permission
      }
    }

    owner {
      id = data.aws_canonical_user_id.current.id
    }
  }
}

resource "aws_s3_bucket_ownership_controls" "bucket_ownership_controls" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    object_ownership = var.object_ownership
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access_block" {
  count  = var.create_s3_public_access_block ? 1 : 0
  bucket = aws_s3_bucket.bucket.id

  block_public_acls       = var.s3_public_access_settings_block_public_acls
  block_public_policy     = var.s3_public_access_settings_block_public_policy
  ignore_public_acls      = var.s3_public_access_settings_ignore_public_acls
  restrict_public_buckets = var.s3_public_access_settings_restrict_public_buckets
}

resource "aws_s3_bucket_website_configuration" "website_configuration" {
  count  = var.create_s3_bucket_website_configuration ? 1 : 0
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = var.website_index_document_suffix
  }
}
locals {
  files_to_upload = var.upload_files ? toset(var.files_to_upload) : toset([])
}

resource "aws_s3_object" "files" {
  for_each = local.files_to_upload
  bucket   = aws_s3_bucket.bucket.id
  key      = each.value
  source   = each.value
}
