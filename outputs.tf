output "resource_group_name" {
  value = "Resource Group Name: ${azurerm_resource_group.rg.name}"
}

output "kubernetes_cluster_name" {
  value = "Kubernetes Cluster Name: ${module.aks.kubernetes_cluster_name}"
}

output "client_certificate" {
  value     = "Client Certificate: ${module.aks.client_certificate}"
  sensitive = true
}

output "client_key" {
  value     = "Client Key: ${module.aks.client_key}"
  sensitive = true
}

output "cluster_ca_certificate" {
  value     = "Cluster CA Certificate: ${module.aks.cluster_ca_certificate}"
  sensitive = true
}

output "cluster_password" {
  value     = "Cluster Password: ${module.aks.cluster_password}"
  sensitive = true
}

output "cluster_username" {
  value     = "Cluster Username: ${module.aks.cluster_username}"
  sensitive = true
}

output "host" {
  value     = "Host: ${module.aks.host}"
  sensitive = true
}

output "kube_config" {
  value     = "Kube Config: ${module.aks.kube_config}"
  sensitive = true
}

output "login_server" {
  value     = "Login Server: ${module.aks.login_server}"
  sensitive = false
}

output "acr_username" {
  value     = "ACR Username: ${module.aks.acr_username}"
  sensitive = true
}

output "acr_password" {
  value     = "ACR Password: ${module.aks.acr_password}"
  sensitive = true
}

