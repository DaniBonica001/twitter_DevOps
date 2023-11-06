variable "resource_group_location" {
  type        = string
  description = "The location/region where the resource group will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the AKS cluster."
}