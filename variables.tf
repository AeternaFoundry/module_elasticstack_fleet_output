variable "fleet_outputs" {
  description = <<EOT
Map of fleet_outputs, attributes below
Required:
    - hosts
    - name
    - type
Optional:
    - ca_sha256
    - ca_trusted_fingerprint
    - config_yaml
    - default_integrations
    - default_monitoring
    - kafka
    - output_id
    - service_token
    - space_ids
    - ssl
    - sync_integrations
    - sync_uninstalled_integrations
    - timeouts
    - write_to_logs_streams
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    hosts                  = list(string)
    name                   = string
    type                   = string
    ca_sha256              = optional(string)
    ca_trusted_fingerprint = optional(string)
    config_yaml            = optional(string)
    default_integrations   = optional(bool)
    default_monitoring     = optional(bool)
    kafka = optional(object({
      auth_type         = optional(string)
      broker_timeout    = optional(number)
      client_id         = optional(string)
      compression       = optional(string)
      compression_level = optional(number)
      connection_type   = optional(string)
      hash = optional(object({
        hash   = optional(string)
        random = optional(bool)
      }))
      headers = optional(list(object({
        key   = string
        value = string
      })))
      key       = optional(string)
      partition = optional(string)
      password  = optional(string)
      random = optional(object({
        group_events = optional(number)
      }))
      required_acks = optional(number)
      round_robin = optional(object({
        group_events = optional(number)
      }))
      sasl = optional(object({
        mechanism = optional(string)
      }))
      timeout  = optional(number)
      topic    = optional(string)
      username = optional(string)
      version  = optional(string)
    }))
    output_id     = optional(string)
    service_token = optional(string)
    space_ids     = optional(set(string))
    ssl = optional(object({
      certificate             = optional(string)
      certificate_authorities = optional(list(string))
      key                     = optional(string)
      verification_mode       = optional(string)
    }))
    sync_integrations             = optional(bool)
    sync_uninstalled_integrations = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    write_to_logs_streams = optional(bool)
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

