variable "api_tokens_lookup" {
  description = <<EOT
Map of api_tokens_lookup, attributes below
Optional:
    - direction
    - include_expired
    - max_items
EOT

  type = map(object({
    direction       = optional(string)
    include_expired = optional(bool)
    max_items       = optional(number)
  }))
}

