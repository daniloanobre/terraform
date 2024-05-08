resource "aws_s3_bucket" "bucket" {
  bucket = "my-bucket-daniloanobre-terraform-09052024"

  lifecycle {
    /*
    The create_before_destroy meta-argument changes this behavior so that the new replacement object is created first, and the prior object is destroyed after the replacement is created.
    */
    create_before_destroy = true
    /*
    The ignore_changes feature is intended to be used when a resource is created with references to data that may change in the future, but should not affect said resource after its creation. In some rare cases, settings of a remote object are modified by processes outside of Terraform, which Terraform would then attempt to "fix" on the next run. In order to make Terraform share management responsibilities of a single object with a separate process, the ignore_changes meta-argument specifies resource attributes that Terraform should ignore when planning updates to the associated remote object.
    */
    ignore_changes = [tags]

  }

  tags = {
    test = "vscode"
  }
}