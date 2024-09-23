## Terraform Provider
Providers in Terraform are responsible for understanding and managing the API interactions and exposing resources for cloud providers and third-party tools. Each provider plugin encapsulates the specifics of interacting with a given API in a way that Terraform Core can understand.

With Terraform, you can manage a multitude of various providers, including public and private cloud providers (like AWS, GCP, Azure), DNS providers (like DNSSimple, CloudFlare), monitoring services (like Datadog, Grafana), among many others.

- ### Provider NameSpace
   - a **provider namespace** is used as part of the identifier for a published provider in the Terraform Registry. It's typically the name of the organization that maintains the provider.
   - Terraform uses the format `<NAMESPACE>/<TYPE>` for providers. For example, with `hashicorp/aws`, "hashicorp" is the namespace and "aws" is the type.
   - The namespace is an organizational unit within the registry that allows publishers to name their providers without risk of conflicts with other publishers who might choose the same name. 
- ### HashiCorp maintained vs unmaintained providers
  - Explicit source information is required for any providers that aren't maintained by HashiCorp. This helps Terraform accurately find and retrieve providers from the Terraform Registry or other locations. The general format to specify a provider source is `<NAMESPACE>/<TYPE>`.

  - For maintained providers, Terraform defaults to the `hashicorp` namespace and a source attribute is not required, whilst for unmaintained or community providers, specifying the `source` attribute in the format `<NAMESPACE>/<PROVIDER_NAME>` is mandatory as of Terraform 0.13. Therefore, the main difference in declaration between maintained and unmaintained providers lies in whether the `source` attribute needs to be explicitly included.

  - Maintained providers do not necessary require the `terraform {}` block, however it can be used to configure certain aspects of how Terraform behaves. Its sub-blocks can specify required versions of Terraform, providers to be used with version constraints, and settings for the backend. 
  
- ### Example of maintained provider
    ```hcl
    terraform {
    required_providers {
        aws = {
        version = "~> 3.0"
        }
    }
    }

    provider "aws" {
    region = "us-west-2"
    }
    ```
- ### Example of unmaintained provider
```hcl
terraform {
  required_providers {
    rancher2 = {
      source = "rancher/rancher2"
      version = "5.0.0"
    }
  }
}
provider "rancher2" {
  # Configuration options
}
```
- **namespace**: `rancher`
   
- **type**: `rancher2`



## Terraform Resources

In Terraform, a "resource" is a component of your infrastructure. It could be a low-level component such as a physical server, virtual machine, or container, or it can be a higher-level component such as a SaaS-based email service.

A resource block in a Terraform file defines a piece of infrastructure. This block declares the type of resource, and provides a set of named arguments that configure that resource. When you run `terraform apply`, Terraform uses these blocks to create, update, or delete resources.