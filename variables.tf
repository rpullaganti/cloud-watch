variable "name" {
  type = string
}

variable "retention_in_days" {
  type = number
}

variable "name_prefix" {
  type = string
}

variable "kms_key_id" {
  type = string
  default = null
}
variable "tags" {
  type = map(string)
}
