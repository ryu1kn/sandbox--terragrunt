locals {
  this_dir_path = "${get_terragrunt_dir()}/${path_relative_from_include()}"
}

inputs = merge(
  read_terragrunt_config("${local.this_dir_path}/common.hcl").inputs,
  {
    state_file_dir = "non-prod"
    variable_1 = "variable 1 non-prod"
    variable_2 = "variable 2 non-prod"
  }
)
