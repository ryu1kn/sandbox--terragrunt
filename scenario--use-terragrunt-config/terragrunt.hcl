
locals {
  target_env = get_env("TARGET_ENV", "non-prod")
  target_env_vars = read_terragrunt_config("${get_terragrunt_dir()}/${local.target_env}.terragrunt.hcl").locals
}

terraform {
  extra_arguments "env_conf" {
    commands = get_terraform_commands_that_need_vars()
  }
}

inputs = local.target_env_vars
