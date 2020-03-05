remote_state {
  backend = "s3"
  generate = {
    path      = "backend.terragrunt.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket = "terragrunt-a8bh3dx-states"
    key = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
    dynamodb_table = "terragrunt-lock-table"
  }
}
