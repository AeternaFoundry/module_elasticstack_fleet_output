output "fleet_outputs_id" {
  description = "Map of id values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no id are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fleet_outputs_ca_sha256" {
  description = "Map of ca_sha256 values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no ca_sha256 are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.ca_sha256 if v.ca_sha256 != null && length(v.ca_sha256) > 0 }
}
output "fleet_outputs_ca_trusted_fingerprint" {
  description = "Map of ca_trusted_fingerprint values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no ca_trusted_fingerprint are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.ca_trusted_fingerprint if v.ca_trusted_fingerprint != null && length(v.ca_trusted_fingerprint) > 0 }
}
output "fleet_outputs_config_yaml" {
  description = "Map of config_yaml values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no config_yaml are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.config_yaml if v.config_yaml != null && length(v.config_yaml) > 0 }
  sensitive   = true
}
output "fleet_outputs_default_integrations" {
  description = "Map of default_integrations values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no default_integrations are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.default_integrations if v.default_integrations != null }
}
output "fleet_outputs_default_monitoring" {
  description = "Map of default_monitoring values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no default_monitoring are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.default_monitoring if v.default_monitoring != null }
}
output "fleet_outputs_hosts" {
  description = "Map of hosts values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no hosts are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.hosts if v.hosts != null && length(v.hosts) > 0 }
}
output "fleet_outputs_kafka" {
  description = "Map of kafka values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no kafka are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.kafka if v.kafka != null && length(v.kafka) > 0 }
}
output "fleet_outputs_kibana_connection" {
  description = "Map of kibana_connection values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "fleet_outputs_name" {
  description = "Map of name values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no name are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "fleet_outputs_output_id" {
  description = "Map of output_id values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no output_id are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.output_id if v.output_id != null && length(v.output_id) > 0 }
}
output "fleet_outputs_service_token" {
  description = "Map of service_token values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no service_token are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.service_token if v.service_token != null && length(v.service_token) > 0 }
  sensitive   = true
}
output "fleet_outputs_space_ids" {
  description = "Map of space_ids values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no space_ids are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.space_ids if v.space_ids != null && length(v.space_ids) > 0 }
}
output "fleet_outputs_ssl" {
  description = "Map of ssl values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no ssl are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.ssl if v.ssl != null && length(v.ssl) > 0 }
}
output "fleet_outputs_sync_integrations" {
  description = "Map of sync_integrations values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no sync_integrations are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.sync_integrations if v.sync_integrations != null }
}
output "fleet_outputs_sync_uninstalled_integrations" {
  description = "Map of sync_uninstalled_integrations values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no sync_uninstalled_integrations are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.sync_uninstalled_integrations if v.sync_uninstalled_integrations != null }
}
output "fleet_outputs_type" {
  description = "Map of type values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no type are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.type if v.type != null && length(v.type) > 0 }
}
output "fleet_outputs_write_to_logs_streams" {
  description = "Map of write_to_logs_streams values across all fleet_outputs, keyed the same as var.fleet_outputs except keys with no write_to_logs_streams are omitted"
  value       = { for k, v in elasticstack_fleet_output.fleet_outputs : k => v.write_to_logs_streams if v.write_to_logs_streams != null }
}

