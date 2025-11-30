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
}
variable "user1" {
  type = string
}

variable "user_group_map" {
  type = map(string)
}
variable "group_managed_policy" {
  type = map(string)
}
