variable "store_bucket_name" {}

resource "aws_s3_bucket" "my-bucket" {
  bucket = var.store_bucket_name
}

output "my-bucket" {
  value = aws_s3_bucket.my-bucket.id
}
