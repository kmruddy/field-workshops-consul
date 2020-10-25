provider "azurerm" {
  version = "=2.20.0"
  features {}
}

provider "consul" {
  alias      = "azure"
  datacenter = "azure-west-us-2"
}

data "terraform_remote_state" "infra" {
  backend = "local"

  config = {
    path = "../infra/terraform.tfstate"
  }
}

data "terraform_remote_state" "iam" {
  backend = "local"

  config = {
    path = "../iam/terraform.tfstate"
  }
}
