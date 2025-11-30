variable "aws_region" {
  type = string
  default = "ap-southeast-2"
}

variable "iam_users" {
  type = list(string)
}

variable "iam_groups" {
  type = list(string)
}
variable "group1" {
  type = string
  default = "dataenginer"
}
variable "user1" {
  type = string
  default = "shaju"
}

variable "user_group_map" {
  type = map(string)
}
variable "group_managed_policy" {
  type = map(string)
  default = {
    Dev      = "arn:aws:iam::aws:policy/PowerUserAccess"
    Ops      = "arn:aws:iam::aws:policy/AdministratorAccess"
    Security = "arn:aws:iam::aws:policy/SecurityAudit"
  }
}
