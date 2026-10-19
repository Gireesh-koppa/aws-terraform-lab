

terraform {
  required_version = ">= 1.0.0"
}

variable "message_text" {
  type        = string
  description = "Message provided through Terraform Cloud"
}

resource "terraform_data" "demo" {
  input = var.message_text
}

output "message" {
  value = terraform_data.demo.output
}
