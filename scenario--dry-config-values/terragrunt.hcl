locals {
  target_env = get_env("TARGET_ENV", "non-prod")
  scenario_root_path = "${get_terragrunt_dir()}/${path_relative_from_include()}"
  target_env_vars = read_terragrunt_config("${local.scenario_root_path}/env-config/${local.target_env}.hcl").inputs
}

remote_state {
  backend = "s3"
  generate = {
    path      = "backend.terragrunt.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "terragrunt-a8bh3dx-states"
    key = "dry-config/${local.target_env_vars.state_file_dir}/${path_relative_to_include()}.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "terragrunt-lock-table"
  }
}

generate "provider" {
  path      = "provider.terragrunt.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "aws" {
  version = "~> 2.51.0"
  region = "ap-southeast-2"
}
EOF
}

inputs = local.target_env_vars
