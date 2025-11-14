# Non-Compliant - Auto import policy disabled
resource "aws_fsx_lustre_file_system" "noncompliant" {
  storage_capacity   = 1200
  subnet_ids         = ["subnet-123456"]
  auto_import_policy = "NONE"
}