variable "project_root_path" {}
variable "bucket_name" {}

resource "aws_s3_bucket_object" "object" {
  bucket = var.bucket_name
  key    = "README.md"
  source = "${var.project_root_path}/README.md"
}
