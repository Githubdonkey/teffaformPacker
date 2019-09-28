resource "aws_s3_bucket" "mainpublic" {
  count = var.enable_publicAcess ? 1 : 0
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket public"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "mainprivate" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket private"
    Environment = "Dev"
  }
}