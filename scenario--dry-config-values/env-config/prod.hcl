locals {
  scenario_root_path = "${get_terragrunt_dir()}/${path_relative_from_include()}"
}

inputs = merge(
  read_terragrunt_config("${local.scenario_root_path}/env-config/common.hcl").inputs,
  {
    state_file_dir = "prod"
    variable_1 = "variable 1 prod"
    variable_2 = "variable 2 prod"
  }
)
