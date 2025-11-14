resource "aws_fsx_lustre_file_system" "non_compliant_disabled" {
  storage_capacity          = 1200
  subnet_ids                = ["subnet-12345678"]
  deployment_type           = "SCRATCH_2"

  # Non-compliant: auto_import_policy is disabled
  auto_import_policy = "NONE"

  tags = {
    Name        = "fsx-lustre-noncompliant-disabled"
    Environment = "dev"
  }
}
