provider "aws" {
  region = "us-east-1"
}

# Compliant: uses a non-high-cost model (Titan), avoids stability/claude
resource "aws_bedrock_provisioned_model_throughput" "titan_model" {
  provisioned_model_name = "titan-lite-throughput"
  model_arn              = "amazon.titan-text-lite-v1"
  model_units            = 1

  tags = {
    environment = "prod"
    project     = "llm-poc"
  }
}
