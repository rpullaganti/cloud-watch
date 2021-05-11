variable "log_group" {
  type = list(object({
    name                 = string
    retention_in_days    = number
    kms_key_id           = optional(string)
  }))
}

variable "tags" {
  type = map(string)
}