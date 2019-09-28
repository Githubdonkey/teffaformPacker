resource "aws_s3_bucket" "gitdonkeymainpublic" {
  count = var.enable_publicAcess ? 1 : 0
  bucket = "gitdonkeymainpublic"
  acl    = "private"

  tags = {
    Name        = "My bucket public"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "gitdonkeymainprivate" {
  bucket = "gitdonkeymainprivate"
  acl    = "private"

  tags = {
    Name        = "My bucket private"
    Environment = "Dev"
  }
}