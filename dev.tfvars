resource_group = {
  name     = "good"
  location = "eastus"
}
vnet_address_space = "10.0.0.0/16"

subnets = [{
  name             = "plo"
  address_prefixes = ["10.0.1.0/24"]           
  }, {
  name             = "gnt"
  address_prefixes = ["10.0.2.0/24"]
  }, {
  name             = "web"
  address_prefixes = ["10.0.3.0/24"]
  }, {
  name             = "db"
  address_prefixes = ["10.0.4.0/24"]
}]
