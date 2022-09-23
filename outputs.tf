output "backend_public_ip" {
  value = azurerm_linux_virtual_machine.backend.public_ip_address
}

output "tls_private_key" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true
}
