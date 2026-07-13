variable "datadog_monitor_tag_rules" {
  description = <<EOT
Map of datadog_monitor_tag_rules, attributes below
Required:
    - datadog_monitor_id
Optional:
    - name
    - log (block):
        - aad_log_enabled (optional)
        - filter (optional, block):
            - action (required)
            - name (required)
            - value (required)
        - resource_log_enabled (optional)
        - subscription_log_enabled (optional)
    - metric (block):
        - filter (optional, block):
            - action (required)
            - name (required)
            - value (required)
EOT

  type = map(object({
    datadog_monitor_id = string
    name               = optional(string)
    log = optional(list(object({
      aad_log_enabled = optional(bool)
      filter = optional(list(object({
        action = string
        name   = string
        value  = string
      })))
      resource_log_enabled     = optional(bool)
      subscription_log_enabled = optional(bool)
    })))
    metric = optional(list(object({
      filter = optional(list(object({
        action = string
        name   = string
        value  = string
      })))
    })))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

