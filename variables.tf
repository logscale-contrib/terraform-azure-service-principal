variable "display_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "group_assignments" {
  type        = list(string)
  default     = []
  description = "Group ID assignments"
}
