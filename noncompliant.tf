# Non-Compliant - FSx file system without encryption
resource "aws_fsx_windows_file_system" "noncompliant" {
  storage_capacity = 300
  subnet_ids       = ["subnet-123456"]
}