output "datadog_monitor_tag_rules" {
  description = "All datadog_monitor_tag_rule resources"
  value       = azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules
}
output "datadog_monitor_tag_rules_datadog_monitor_id" {
  description = "List of datadog_monitor_id values across all datadog_monitor_tag_rules"
  value       = [for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : v.datadog_monitor_id]
}
output "datadog_monitor_tag_rules_log" {
  description = "List of log values across all datadog_monitor_tag_rules"
  value       = [for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : v.log]
}
output "datadog_monitor_tag_rules_metric" {
  description = "List of metric values across all datadog_monitor_tag_rules"
  value       = [for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : v.metric]
}
output "datadog_monitor_tag_rules_name" {
  description = "List of name values across all datadog_monitor_tag_rules"
  value       = [for k, v in azurerm_datadog_monitor_tag_rule.datadog_monitor_tag_rules : v.name]
}

