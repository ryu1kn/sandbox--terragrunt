dependency "stack-1" {
  config_path = "../stack-1"
}

inputs = {
  project_root_path = get_parent_terragrunt_dir()
  bucket_name = dependency.stack-1.outputs.my-bucket
}

include {
  path = find_in_parent_folders()
}
