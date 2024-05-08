resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  lifecycle {

    /* Resource aws_instance.vm has lifecycle.prevent_destroy set, but the plan calls for this resource to be destroyed.
    To avoid this error and continue with the plan, either disable lifecycle.prevent_destroy or reduce the scope of the plan using the -target option.
    */

    # prevent_destroy = true

    # Replaces the resource when any of the referenced items change.
    replace_triggered_by = [
      # aws_s3_bucket.bucket
    ]
  }

  tags = {
    Name = "aws-vm-terraform"
  }
}