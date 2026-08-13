resource "aws_s3_bucket_versioning" "s3_bucket_versionings" {
  for_each = var.s3_bucket_versionings

  bucket                = each.value.bucket
  expected_bucket_owner = each.value.expected_bucket_owner
  mfa                   = each.value.mfa
  region                = each.value.region

  versioning_configuration {
    mfa_delete = each.value.versioning_configuration.mfa_delete
    status     = each.value.versioning_configuration.status
  }
}

