dependency "stack-1" {
  config_path = "../stack-1"
}

inputs = {
  project_root_path = get_parent_terragrunt_dir()
  st1_variable_1 = dependency.stack-1.outputs.out_variable_1
}

include {
  path = find_in_parent_folders()
}
