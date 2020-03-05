resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-bucket-a8bh3dx"
}

output "my-bucket" {
  value = aws_s3_bucket.my-bucket
}
