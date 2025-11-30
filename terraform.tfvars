aws_region = "ap-southeast-2"
iam_users = ["bala" , "shajahan" , "srikanth"]
iam_groups = ["admin", "dev" , "devops"]
user_group_map = {
                  bala = "devops"
                  shajahan = "admin"
                  srikanth = "dev"
                 }

# Attach AWS-managed policies
group_managed_policy = {
  devops      = "arn:aws:iam::aws:policy/PowerUserAccess"
  admin      = "arn:aws:iam::aws:policy/AdministratorAccess"
  dev        = "arn:aws:iam::aws:policy/SecurityAudit"
}

group1 = "dataengineer"
user1  = "shaju"

                
