resource "aws_bedrock_custom_model" "small_model" {
  model_name  = "titan-lite"
  model_units = 8
}