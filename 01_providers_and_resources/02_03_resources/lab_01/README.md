## Prerequisites
1. Ensure your lab is already set up with Terraform CLI and AWS CLI
    - If not, please revisit [Lab Setup Instructions [REQUIRED]](../../../README.md)


## Task 1 - Create a VM using Terraform

Along with this lab, there is a `vm.tf` script that sets up an EC2 instance. 

1. Open the `vm.tf` file in your editor.
2. Verify the configuration, especially the VM settings (AMI, instance type, etc.).
3. Initialize Terraform.
    ```bash
    terraform init
    ```
4. Validate the configuration.
    ```bash
    terraform plan
    ```

5. Create the VM.

    ```bash
    terraform apply
    ```