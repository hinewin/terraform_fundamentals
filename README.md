# Terraform Fundamentals

This repository aims to build a solid foundation for using Terraform, a widely-used infrastructure as code tool. Its objective is to guide users through important Terraform concepts, empowering them to manage and automate their infrastructure effectively.

This guide will be using [AWS](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-creating.html) as the main cloud provider.


<details>
<summary>📋 Repository Setup Instructions</summary>

1. Clone the repository.

    ```bash
    git clone <repository-url>
    cd <repository-name>
    ```

1.  Run setup script.

    This repository uses custom Git hooks. To set them up correctly, run the provided setup script:

    ```bash
    ./init.sh
    ```

    This script configures Git to use the `.githooks` directory for hooks.

    **Hook features**:
    -  When you commit changes, the configured Git hooks will automatically execute to perform checks (like `terraform fmt`, for instance).

</details>

<details>

<summary>📋 Lab Setup Instructions</summary>

1. Setup Terraform
    1. Install Terraform
        - Guide: [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
    1.  Verify the installation by running the following command
        - `terraform --version`

1. Setup AWS Account
    1. Navigate to AWS website and create an account if you don't already have one.
    1. Once logged in, generate an AWS Access Key ID and Secret Access Key. 
        - Guide: [Creating Access Keys](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys)
        - _Ensure to securely store these keys, do not commit them into repositories or share them._

1. Install AWS CLI
    1.  Install the AWS command line interface (CLI) on your local machine.
        - Guide: [Installing the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
    1.  Configure AWS CLI with your credentials.
        - Guide: [Initializing AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html)

</details>

## Chapter 1 - Providers & Resources

Providers are plugins that connect Terraform to various cloud services (like AWS, Google Cloud, Azure), while Resources represent infrastructure objects (like virtual machines or databases) that the Providers can manage. This chapter serves as a stepping stone into effective infrastructure management with Terraform.

<details>
<summary> 📁 Chapter Resources</summary>

- **[lab 01: Creating an AWS EC2 instance](01_providers_and_resources/02_02_resources/lab_01/)**

</details>

## Chapter 2 