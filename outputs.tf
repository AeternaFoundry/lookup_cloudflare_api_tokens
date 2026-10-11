output "api_tokens_lookup_direction" {
  description = "Map of direction values across all api_tokens_lookup, keyed the same as var.api_tokens_lookup except keys with no direction are omitted"
  value       = { for k, v in data.cloudflare_api_tokens.api_tokens_lookup : k => v.direction if v.direction != null && length(v.direction) > 0 }
}
output "api_tokens_lookup_include_expired" {
  description = "Map of include_expired values across all api_tokens_lookup, keyed the same as var.api_tokens_lookup except keys with no include_expired are omitted"
  value       = { for k, v in data.cloudflare_api_tokens.api_tokens_lookup : k => v.include_expired if v.include_expired != null }
}
output "api_tokens_lookup_max_items" {
  description = "Map of max_items values across all api_tokens_lookup, keyed the same as var.api_tokens_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_api_tokens.api_tokens_lookup : k => v.max_items if v.max_items != null }
}
output "api_tokens_lookup_result" {
  description = "Map of result values across all api_tokens_lookup, keyed the same as var.api_tokens_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_api_tokens.api_tokens_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

