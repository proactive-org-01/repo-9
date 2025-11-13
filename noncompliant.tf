resource "aws_bedrock_custom_model" "expensive_model" {
  model_name  = "claude"
  model_units = 15
}