resource "aws_s3_bucket" "bkp" {
  
  bucket    = "terraform-project"
  acl       = "private"

  tags = {
      Name = "storage"
  }
}
