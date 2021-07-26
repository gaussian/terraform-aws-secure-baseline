output "configuration_recorder" {
  description = "The configuration recorder."
  value       = var.enabled ? aws_config_configuration_recorder.recorder[0] : null
}

output "config_sns_topic" {
  description = "The SNS topic that AWS Config delivers notifications to."
  value       = var.enabled && var.sns_topic_name != "" ? aws_sns_topic.config[0] : null
}
