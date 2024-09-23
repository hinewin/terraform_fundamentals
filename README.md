# Terraform Fundamentals

This repository aims to build a solid foundation for using Terraform, a widely-used infrastructure as code tool. Its objective is to guide users through important Terraform concepts, empowering them to manage and automate their infrastructure effectively.

<details>
<summary>📋 Setup Instructions</summary>

1. Clone the repository.

    ```bash
    git clone <repository-url>
    cd <repository-name>
    ```

2. Run setup script.

    This repository uses custom Git hooks. To set them up correctly, run the provided setup script:

    ```bash
    ./init.sh
    ```

    This script configures Git to use the `.githooks` directory for hooks.

    **Hook features**:
    -  When you commit changes, the configured Git hooks will automatically execute to perform checks (like `terraform fmt`, for instance).
</details>

## Chapter 1 - Providers & Resources

Providers are plugins that connect Terraform to various cloud services (like AWS, Google Cloud, Azure), while Resources represent infrastructure objects (like virtual machines or databases) that the Providers can manage. This chapter serves as a stepping stone into effective infrastructure management with Terraform.