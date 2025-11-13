resource "aws_bedrock_custom_model" "cheap_model" {
  model_name  = "titan-lite"
  model_units = 5
}