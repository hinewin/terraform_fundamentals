# Option 1
provider aws {}

 # The AWS provider's source is `hashicorp/aws`. Since the namespace is `hashicorp`, Terraform automatically
 # recognizes this without having to explicitly define the source.

# Option 2
# Further configurations can be added within the `terraform` block ex:

 terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.68.0"
    }
  }
}

provider "aws" {
  # Configuration options
}