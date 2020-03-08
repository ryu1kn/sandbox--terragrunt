resource "aws_s3_bucket_object" "object" {
  bucket = "my-bucket-a8bh3dx"
  key    = "README.md"
  source = "${var.project_root_path}/README.md"
}
