resource "aws_s3_bucket" "gitDonkeyMainpublic" {
  count = var.enable_publicAcess ? 1 : 0
  bucket = "gitDonkeyMainpublic"
  acl    = "private"

  tags = {
    Name        = "My bucket public"
    Environment = "Dev"
  }
}
resource "aws_s3_bucket" "gitDonkeyMainprivate" {
  bucket = "gitDonkeyMainprivate"
  acl    = "private"

  tags = {
    Name        = "My bucket private"
    Environment = "Dev"
  }
}