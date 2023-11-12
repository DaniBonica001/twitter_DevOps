output "mongodb_connection_string"{
    value=azurerm_cosmosdb_account.az-cosmos.connection_strings.0   
}