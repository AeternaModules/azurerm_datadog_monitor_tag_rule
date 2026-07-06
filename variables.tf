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
    name               = optional(string) # Default: "default"
    log = optional(object({
      aad_log_enabled = optional(bool)
      filter = optional(object({
        action = string
        name   = string
        value  = string
      }))
      resource_log_enabled     = optional(bool)
      subscription_log_enabled = optional(bool)
    }))
    metric = optional(object({
      filter = optional(object({
        action = string
        name   = string
        value  = string
      }))
    }))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_datadog_monitor_tag_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: datadog_monitor_id
  #   source:    [from monitorsresource.ValidateMonitorID] !ok
  # path: datadog_monitor_id
  #   source:    [from monitorsresource.ValidateMonitorID] err != nil
  # path: log.filter.action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: metric.filter.action
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

