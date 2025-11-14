provider "aws" {
  region = "us-east-1"
}

resource "aws_efs_file_system" "efs_compliant" {
  creation_token = "efs-compliant"

  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }

  tags = {
    Name = "efs-with-lifecycle"
  }
}
