
terraform {
  required_version = ">= 1.0.0"
}

resource "terraform_data" "demo" {
  input = "Hello from Terraform Cloud!"
}

output "message" {
  value = terraform_data.demo.output
}
