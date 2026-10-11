variable "ovhcloud_connect_config_pop_datacenters_lookup" {
  description = <<EOT
Map of ovhcloud_connect_config_pop_datacenters_lookup, attributes below
Required:
    - config_pop_id
    - service_name
EOT

  type = map(object({
    config_pop_id = number
    service_name  = string
  }))
}

