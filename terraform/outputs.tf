output "public_ip_addresses" {
  description = "The public IP addresses of the virtual machines"
  value       = [azurerm_public_ip.main.ip_address, azurerm_public_ip.secondary.ip_address]
}
