output "kubernetes_cluster_name" {
  value = azurerm_kubernetes_cluster.k8s.name
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config[0].client_certificate
  sensitive = true
}

output "client_key" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config[0].client_key
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config[0].cluster_ca_certificate
  sensitive = true
}

output "cluster_password" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config[0].password
  sensitive = true
}

output "cluster_username" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config[0].username
  sensitive = true
}

output "host" {
  value     = azurerm_kubernetes_cluster.k8s.kube_config[0].host
  sensitive = true
}

output "login_server" {
  value     = azurerm_container_registry.Acr.login_server
  sensitive = false
}

output "acr_name" {
  value     = azurerm_container_registry.Acr.name
  sensitive = false
}

output "acr_username" {
  value     = azurerm_container_registry.Acr.admin_username
  sensitive = true
}

output "acr_password" {
  value     = azurerm_container_registry.Acr.admin_password
  sensitive = true
}