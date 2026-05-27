# Molecule: KMS Key with Alias
module "key" {
  source = "git::https://github.com/PlatformStackPulse/tf-atom-kms-key-aws.git?ref=f16ebd8db9aaa31a3cf39734385394e9e5a460a0"

  context                  = module.this.context
  description              = var.description
  deletion_window_in_days  = var.deletion_window_in_days
  enable_key_rotation      = var.enable_key_rotation
  key_usage                = var.key_usage
  customer_master_key_spec = var.customer_master_key_spec
  multi_region             = var.multi_region
}

module "alias" {
  source = "git::https://github.com/PlatformStackPulse/tf-atom-kms-alias-aws.git?ref=90bdb0e3a5c3351b0681cdf23bc63091996048a3"

  context       = module.this.context
  target_key_id = module.key.key_id

  depends_on = [module.key]
}
