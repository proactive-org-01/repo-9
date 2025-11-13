provider "aws" {
  region = "us-east-1"
}

resource "aws_efs_file_system" "efs_noncompliant" {
  creation_token = "efs-noncompliant"

  # Missing lifecycle_policy block

  tags = {
    Name = "efs-without-lifecycle"
  }
}
