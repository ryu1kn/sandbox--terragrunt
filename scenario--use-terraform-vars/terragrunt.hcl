
locals {
  target_env = get_env("TARGET_ENV", "non-prod")
}

terraform {
  extra_arguments "env_conf" {
    commands = get_terraform_commands_that_need_vars()
    required_var_files = [
      "${get_terragrunt_dir()}/${local.target_env}.tfvars"
    ]
  }
}
