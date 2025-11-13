resource "aws_bedrock_custom_model" "large_model" {
  model_name  = "titan-lite"
  model_units = 25
}