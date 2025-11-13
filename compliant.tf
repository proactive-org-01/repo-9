# Compliant - Auto import policy enabled
resource "aws_fsx_lustre_file_system" "compliant" {
  storage_capacity   = 1200
  subnet_ids         = ["subnet-123456"]
  auto_import_policy = "NEW_CHANGED_DELETED"
}