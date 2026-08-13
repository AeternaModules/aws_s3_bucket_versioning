variable "s3_bucket_versionings" {
  description = <<EOT
Map of s3_bucket_versionings, attributes below
Required:
    - bucket
    - versioning_configuration (block):
        - mfa_delete (optional)
        - status (required)
Optional:
    - expected_bucket_owner
    - mfa
    - region
EOT

  type = map(object({
    bucket                = string
    expected_bucket_owner = optional(string)
    mfa                   = optional(string)
    region                = optional(string)
    versioning_configuration = object({
      mfa_delete = optional(string)
      status     = string
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

