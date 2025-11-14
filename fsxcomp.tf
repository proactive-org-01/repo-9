resource "aws_fsx_lustre_file_system" "compliant" {
  storage_capacity          = 1200
  subnet_ids                = ["subnet-12345678"]
  deployment_type           = "SCRATCH_2"

  # Compliant: auto_import_policy is enabled
  auto_import_policy        = "NEW_CHANGED"

  tags = {
    Name        = "fsx-lustre-compliant"
    Environment = "prod"
  }
}
