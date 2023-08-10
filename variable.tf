variable "name" {
  description = "The name of the Redis instance."
  type        = string

}
variable "location" {
  description = "The location of the resource group."
  type        = string

}
variable "resource_group_name" {
  description = "The name of the Resource group"
  type        = string

}
variable "capacity" {
    description = "The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4, 5"
    type= string  
}
variable "family" {
  description = "The SKU family/pricing group to use"
  type        = string

}
variable "sku_name" {
  description = "The SKU of Redis to use. Possible values are Basic, Standard and Premium."
  type        = string

}
variable "enable_non_ssl_port" {
  description = "Enable the non-SSL port (6379) - disabled by default."
  type = bool
  default = false

}
variable "public_network_access_enabled" {
    description = "Whether or not public network access is allowed for this Redis Cache."
    type= bool
    default = true
}

variable "redis_version" {
  description = "Redis version."
  type        = string
  default = "6"

}
# variable "zones" {
#   description = " Specifies a list of Availability Zones in which this Redis Cache should be located."

# }
variable "identity" {
    description = "region of deployment"
    type= string  
    default = "false"

}
variable "type" {
    description = "Specifies the type of Managed Service Identity that should be configured on this Redis Cluster. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned"
    type= string  
    default = "SystemAssigned"

}
variable "patch_schedule" {
    description = "region of deployment"
    type= string  
    default = "false"
}
variable "day_of_week" {
    description = " the Weekday name - possible values include"
    type= string  
    default = "Monday"
}