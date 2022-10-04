
output "public_ip_address" {
  value = azurerm_windows_virtual_machine.my_terraform_vm.public_ip_address
}

output "tls_private_key" {
  value     = tls_private_key.example_ssh.private_key_pem
  sensitive = true
}

output "azurerm_mysql_database" {
  value = azurerm_mysql_database.my_sql_db.server_name
}

output "azurerm_mysql_server" {
  value = azurerm_mysql_server.my_sql_srv.name
}
