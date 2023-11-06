resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_cosmosdb_account" "az-cosmos" {
  name                = "cosmos-db-${random_integer.ri.result}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "MongoDB"

  enable_automatic_failover = true

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

  geo_location {
    location          = "westus"
    failover_priority = 1
  }

  geo_location {
    location          = var.resource_group_location
    failover_priority = 0
  }
}

resource "azurerm_cosmosdb_mongo_database" "test" {
  name                = "tfex-cosmos-mongo-db"
  resource_group_name = var.resource_group_name
  account_name        = azurerm_cosmosdb_account.az-cosmos.name

  autoscale_settings {
    max_throughput = 1000
    
  }
}

resource "azurerm_cosmosdb_mongo_collection" "test-comment" {
  name                = "Comment"
  resource_group_name = var.resource_group_name
  account_name        = azurerm_cosmosdb_account.az-cosmos.name
  database_name       = azurerm_cosmosdb_mongo_database.test.name

  default_ttl_seconds = "777"
  shard_key           = "uniqueKey"
  throughput          = 400

  index {
    keys   = ["_id"]
    unique = true
  }
}

resource "azurerm_cosmosdb_mongo_collection" "test-notification" {
  name                = "Notification"
  resource_group_name = var.resource_group_name
  account_name        = azurerm_cosmosdb_account.az-cosmos.name
  database_name       = azurerm_cosmosdb_mongo_database.test.name

  default_ttl_seconds = "777"
  shard_key           = "uniqueKey"
  throughput          = 400

  index {
    keys   = ["_id"]
    unique = true
  }
}
resource "azurerm_cosmosdb_mongo_collection" "test-post" {
  name                = "Post"
  resource_group_name = var.resource_group_name
  account_name        = azurerm_cosmosdb_account.az-cosmos.name
  database_name       = azurerm_cosmosdb_mongo_database.test.name

  default_ttl_seconds = "777"
  shard_key           = "uniqueKey"
  throughput          = 400

  index {
    keys   = ["_id"]
    unique = true
  }
}

resource "azurerm_cosmosdb_mongo_collection" "test-user" {
  name                = "User"
  resource_group_name = var.resource_group_name
  account_name        = azurerm_cosmosdb_account.az-cosmos.name
  database_name       = azurerm_cosmosdb_mongo_database.test.name

  default_ttl_seconds = "777"
  shard_key           = "uniqueKey"
  throughput          = 400

  index {
    keys   = ["_id"]
    unique = true
  }
}