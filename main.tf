data "ovh_ovhcloud_connect_config_pop_datacenters" "ovhcloud_connect_config_pop_datacenters_lookup" {
  for_each = var.ovhcloud_connect_config_pop_datacenters_lookup

  config_pop_id = each.value.config_pop_id
  service_name  = each.value.service_name
}

