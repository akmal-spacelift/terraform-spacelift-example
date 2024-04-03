terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

resource "spacelift_stack" "example-stack" {
  github_enterprise {
    namespace = "akmal-spacelift" # The GitHub organization / user the repository belongs to
  }

  name = var.new_stack_name

  administrative    = true
  autodeploy        = false
  branch            = "main"
  description       = "simple gcp compute instance"
  repository        = "stack_for_module_usage"
  terraform_version = "0.12.27"
}

resource "spacelift_webhook" "simple-webhook-4" {
  stack_id = spacelift_stack.example-stack.id

  endpoint = "https://example.com/example_webhook"
  secret   = "my_secret"
}
