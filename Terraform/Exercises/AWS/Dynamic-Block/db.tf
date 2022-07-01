data "http" "ip" {
  url = "http://ipv4.icanhazip.com"
}

locals {

  valueip = ["(${tostring(data.http.ip.response_body)}"]
}

output "ip" {
  value = local.valueip
}

resource "aws_security_group" "demo" {
  name = "dynamic-block-security-group"

  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["162.196.143.216/32"]
    }
  }
}


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "South Central US"
}

resource "azurerm_network_security_group" "example" {
  name                = "acceptanceTestSecurityGroup1"
  resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "${chomp(data.http.ip.response_body)}/32"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}
