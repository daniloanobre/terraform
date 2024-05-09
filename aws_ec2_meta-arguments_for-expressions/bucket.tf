resource "aws_s3_bucket" "bucket" {
  bucket = "my-bucket-daniloanobre-terraform-09052024"

  tags = {
    test = "vscode"
  }
}