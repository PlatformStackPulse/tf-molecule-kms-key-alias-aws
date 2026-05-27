output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "key_arn" {
  description = "ARN of the KMS key"
  value       = module.key.key_arn
}

output "key_id" {
  description = "ID of the KMS key"
  value       = module.key.key_id
}

output "alias_arn" {
  description = "ARN of the KMS alias"
  value       = module.alias.alias_arn
}

output "alias_name" {
  description = "Name of the KMS alias"
  value       = module.alias.alias_name
}
