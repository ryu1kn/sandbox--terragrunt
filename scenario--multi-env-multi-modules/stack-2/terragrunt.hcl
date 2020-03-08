dependency "stack-1" {
  config_path = "../stack-1"
}

inputs = {
  project_root_path = get_parent_terragrunt_dir()
}

include {
  path = find_in_parent_folders()
}
