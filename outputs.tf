output "ovhcloud_connect_config_pop_datacenters_lookup_config_pop_id" {
  description = "Map of config_pop_id values across all ovhcloud_connect_config_pop_datacenters_lookup, keyed the same as var.ovhcloud_connect_config_pop_datacenters_lookup except keys with no config_pop_id are omitted"
  value       = { for k, v in data.ovh_ovhcloud_connect_config_pop_datacenters.ovhcloud_connect_config_pop_datacenters_lookup : k => v.config_pop_id if v.config_pop_id != null }
}
output "ovhcloud_connect_config_pop_datacenters_lookup_datacenter_configs" {
  description = "Map of datacenter_configs values across all ovhcloud_connect_config_pop_datacenters_lookup, keyed the same as var.ovhcloud_connect_config_pop_datacenters_lookup except keys with no datacenter_configs are omitted"
  value       = { for k, v in data.ovh_ovhcloud_connect_config_pop_datacenters.ovhcloud_connect_config_pop_datacenters_lookup : k => v.datacenter_configs if v.datacenter_configs != null && length(v.datacenter_configs) > 0 }
}
output "ovhcloud_connect_config_pop_datacenters_lookup_service_name" {
  description = "Map of service_name values across all ovhcloud_connect_config_pop_datacenters_lookup, keyed the same as var.ovhcloud_connect_config_pop_datacenters_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_ovhcloud_connect_config_pop_datacenters.ovhcloud_connect_config_pop_datacenters_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

