# Compliant - FSx file system with KMS encryption
resource "aws_fsx_windows_file_system" "compliant" {
  storage_capacity = 300
  subnet_ids       = ["subnet-123456"]
  kms_key_id       = "arn:aws:kms:region:acct:key/abcd1234"
}