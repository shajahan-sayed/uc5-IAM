output "created_users" {
  description = "List of IAM users created"
  value = [for u in keys(aws_iam_user.users) : aws_iam_user.users[u].name]
}

output "created_groups" {
  description = "List of IAM groups created"
  value = [for g in keys(aws_iam_group.groups) : aws_iam_group.groups[g].name]
}

output "user_group_assignment" {
  description = "User to group mapping"
  value       = var.user_group_map
}
