output "datadog_monitor_tag_rules_datadog_monitor_id" {
  description = "Map of datadog_monitor_id values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = { for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : k => v.datadog_monitor_id }
}
output "datadog_monitor_tag_rules_log" {
  description = "Map of log values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = { for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : k => v.log }
}
output "datadog_monitor_tag_rules_metric" {
  description = "Map of metric values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = { for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : k => v.metric }
}
output "datadog_monitor_tag_rules_name" {
  description = "Map of name values across all datadog_monitor_tag_rules, keyed the same as var.datadog_monitor_tag_rules"
  value       = { for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : k => v.name }
}

