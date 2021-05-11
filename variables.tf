variable "name" {
  type = string
}

variable "retention_in_days" {
  type = string
}

variable "name_prefix" {
  type = string
}

variable "kms_key_id" {
  type = string
}
variable "tags" {
  type = map(string)
}
