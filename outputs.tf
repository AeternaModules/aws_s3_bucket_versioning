output "s3_bucket_versionings_id" {
  description = "Map of id values across all s3_bucket_versionings, keyed the same as var.s3_bucket_versionings"
  value       = { for k, v in aws_s3_bucket_versioning.s3_bucket_versionings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3_bucket_versionings_bucket" {
  description = "Map of bucket values across all s3_bucket_versionings, keyed the same as var.s3_bucket_versionings"
  value       = { for k, v in aws_s3_bucket_versioning.s3_bucket_versionings : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3_bucket_versionings_expected_bucket_owner" {
  description = "Map of expected_bucket_owner values across all s3_bucket_versionings, keyed the same as var.s3_bucket_versionings"
  value       = { for k, v in aws_s3_bucket_versioning.s3_bucket_versionings : k => v.expected_bucket_owner if v.expected_bucket_owner != null && length(v.expected_bucket_owner) > 0 }
}
output "s3_bucket_versionings_mfa" {
  description = "Map of mfa values across all s3_bucket_versionings, keyed the same as var.s3_bucket_versionings"
  value       = { for k, v in aws_s3_bucket_versioning.s3_bucket_versionings : k => v.mfa if v.mfa != null && length(v.mfa) > 0 }
}
output "s3_bucket_versionings_region" {
  description = "Map of region values across all s3_bucket_versionings, keyed the same as var.s3_bucket_versionings"
  value       = { for k, v in aws_s3_bucket_versioning.s3_bucket_versionings : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3_bucket_versionings_versioning_configuration" {
  description = "Map of versioning_configuration values across all s3_bucket_versionings, keyed the same as var.s3_bucket_versionings"
  value       = { for k, v in aws_s3_bucket_versioning.s3_bucket_versionings : k => v.versioning_configuration if v.versioning_configuration != null && length(v.versioning_configuration) > 0 }
}

