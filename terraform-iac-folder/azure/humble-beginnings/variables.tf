variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "your-awesome-resourcegroup-name" # CHANGE THIS - this is the name of your resource group
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "Central US" # CHANGE THIS - this is the region you want to deploy your resources
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "yourawesomeresourcegroupname" # CHANGE THIS - this is your storage account name and it has to be globally unique across all of Azure. Has to be lowercase & between 3-24 characters
}
