output "created_users" {
  description = "List of IAM users created"
  value       = [for u in aws_iam_user.users : u.value.name]
}

output "created_groups" {
  description = "List of IAM groups created"
  value       = [for g in aws_iam_group.groups : g.value.name]
}

output "user_group_assignment" {
  description = "User to group mapping"
  value       = var.user_group_map
}
