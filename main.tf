#creating groups in 2 method ( with for each and  manually)
resource "aws_iam_group" "groups" {
   for_each = tosset(var.iam_groups)
   name = each.key
}
resource "aws_iam_group" "group1" {
   name = var.group1
}

#creating users in 2 ways ( with for each and manually)

resource "aws_iam_user" "users" {
   for_each = tosset(var.iam_users)
   name = each.key 
   force_destroy = true
} user   = "alice"
  groups = ["admins"]
}


resource "aws_iam_user" "user1" {
   name = var.user1
   force_destroy - true
}

#attach users to groups

resource "aws_iam_user_group_membership" "user_membership" {
    for_each = var.user_group_map

    user = eack.key

    groups = [
    aws_iam_group.groups[each.value].name
  ]
}

resource "aws_iam_user_group_membership" "user_membership1" {
   user = var.user1
   groups = [
        aws_iam_group.groups["var.group1].name
   ]
}

#aws managed policy
resource "aws_iam_group_policy_attachment" "policy" {
  for_each = var.group_managed_policy
  group = aws_iam_group.groups[each.key].name
  policy_arn = each.value
}

resource "aws_iam_group_policy_attachment" "policy1" {
    group      = aws_iam_group.group1["var.group1"].name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}


   
   

