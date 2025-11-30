output "created_users" {
  description = "List of IAM users created"
  value       = aws_iam_user.users[*].name
}

output "created_groups" {
  description = "List of IAM groups created"
  value       = aws_iam_group.groups[*].name
}

output "user_group_assignment" {
  description = "User to group mapping"
  value       = var.user_group_map
}
