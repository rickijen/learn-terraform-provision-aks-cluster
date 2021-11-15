output "resource_group_name" {
  value = azurerm_resource_group.default.name
}

output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}

output "client_key" {
    value = azurerm_kubernetes_cluster.default.kube_config.0.client_key
}

output "client_certificate" {
    value = azurerm_kubernetes_cluster.default.kube_config.0.client_certificate
}

output "cluster_ca_certificate" {
    value = azurerm_kubernetes_cluster.default.kube_config.0.cluster_ca_certificate
}

output "cluster_username" {
    value = azurerm_kubernetes_cluster.default.kube_config.0.username
}

output "cluster_password" {
    value = azurerm_kubernetes_cluster.default.kube_config.0.password
}

output "kube_config" {
    value = azurerm_kubernetes_cluster.default.kube_config_raw
    sensitive = true
}

output "host" {
    value = azurerm_kubernetes_cluster.default.kube_config.0.host
}

output "aks_managed_identity_object_id" {
    value = azurerm_kubernetes_cluster.default.identity.0.principal_id
}

/*
output "aad_aks_admin_group_object_id" {
  value = azuread_group.aks_administrators.object_id
}
*/