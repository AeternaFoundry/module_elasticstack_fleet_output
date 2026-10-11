resource "elasticstack_fleet_output" "fleet_outputs" {
  for_each = var.fleet_outputs

  hosts                         = each.value.hosts
  name                          = each.value.name
  type                          = each.value.type
  ca_sha256                     = each.value.ca_sha256
  ca_trusted_fingerprint        = each.value.ca_trusted_fingerprint
  config_yaml                   = each.value.config_yaml
  default_integrations          = each.value.default_integrations
  default_monitoring            = each.value.default_monitoring
  kafka                         = each.value.kafka
  output_id                     = each.value.output_id
  service_token                 = each.value.service_token
  space_ids                     = each.value.space_ids
  ssl                           = each.value.ssl
  sync_integrations             = each.value.sync_integrations
  sync_uninstalled_integrations = each.value.sync_uninstalled_integrations
  timeouts                      = each.value.timeouts
  write_to_logs_streams         = each.value.write_to_logs_streams

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

