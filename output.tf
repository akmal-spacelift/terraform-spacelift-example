output "new_stack_id" {
  value = spacelift_stack.example-stack.id
  description = "id of created stack"
}

output "hello" {
  value = "hello world again"
}
