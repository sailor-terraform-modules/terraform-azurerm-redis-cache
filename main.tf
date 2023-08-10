resource "azurerm_redis_cache" "azurerm_redis_cache" {
  name                          = var.name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  capacity                      = var.capacity
  family                        = var.family
  sku_name                      = var.sku_name
  enable_non_ssl_port           = false
  public_network_access_enabled = false
  redis_version                 = var.redis_version
  # zones  = var.zones
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }

  redis_configuration {
  }


  dynamic "identity" {
    for_each = var.identity ? [{}] : []
    content {
      type = var.type
    }
  }
  dynamic "patch_schedule" {
    for_each = var.patch_schedule ? [{}] : []
    content {
      day_of_week = var.day_of_week
    }
  }
}