data "cloudflare_api_tokens" "api_tokens_lookup" {
  for_each = var.api_tokens_lookup

  direction       = each.value.direction
  include_expired = each.value.include_expired
  max_items       = each.value.max_items
}

