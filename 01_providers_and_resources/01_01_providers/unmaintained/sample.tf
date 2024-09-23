terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "5.0.0"
    }
  }
}

###########################
### None working sample ###
###########################

# provider "rancher" {}


# This will cause an issue because an unmanaged provider
# needs the correct format which is to declare this provider
# using a fully qualified source in the `required_providers` block,
# which includes the namespace and the provider's name.