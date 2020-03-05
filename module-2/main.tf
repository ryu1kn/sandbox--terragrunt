provider "aws" {
  version = "~> 2.51.0"
  region = "ap-southeast-2"
}

resource "aws_s3_bucket_object" "object" {
  bucket = "my-bucket-a8bh3dx"
  key    = "README.md"
  source = "${var.project_root_path}/README.md"
}

output "project-root-path" {
  value = var.project_root_path
}
