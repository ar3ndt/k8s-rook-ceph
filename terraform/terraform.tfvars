existing_vnet_subnet_id = ""
existing_resource_group_name = ""
location = "North Central US"
kubernetes_version = "1.17.9"
vnet_address_space = [
  "10.1.1.0/24"]
aks_address_prefix = [
  "10.1.1.0/24"]
public_ssh_key_path = "/terraform/azure_rsa.pub"
nodes_public_ip = false
network_plugin = "azure"
network_policy = "azure"
linux_admin_username = "operation"
default_node_pool = {
  name = "linux"
  node_count = 3
  vm_size = "Standard_DS2_v2"
  os_disk_size_gb = "50"
  type = "VirtualMachineScaleSets"
  enable_auto_scaling = false
  min_count = null
  max_count = null
}
additional_cluster_node_pools = {
  name = "windows"
  node_count = 0
  vm_size = "Standard_DS2_v2"
  os_type = "Windows"
  os_disk_size_gb = "50"
  type = "VirtualMachineScaleSets"
  enable_auto_scaling = false
  min_count = null
  max_count = null
}
auto_scaler_profile = {
  balance_similar_node_groups = false
  max_graceful_termination_sec = "600"
  scale_down_delay_after_add = "10m"
  scale_down_delay_after_delete = "10s"
  scale_down_delay_after_failure = "10m"
  scan_interval = "10s"
  scale_down_unneeded = "10m"
  scale_down_unready = "20m"
  scale_down_utilization_threshold = "0.5"
}