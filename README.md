# terraform-ansible-lab
Laboratório da Codaqui para testar Terraform e Ansible

## Prerequisites

- Terraform installed
- Ansible installed
- Azure account

## Setup

1. Clone the repository:
   ```sh
   git clone https://github.com/codaqui/terraform-ansible-lab.git
   cd terraform-ansible-lab
   ```

## Terraform

1. Navigate to the `terraform` directory:
   ```sh
   cd terraform
   ```

2. Initialize Terraform:
   ```sh
   terraform init
   ```

3. Apply the Terraform configuration to create the virtual machines:
   ```sh
   terraform apply
   ```

4. Note the public IP addresses of the virtual machines from the Terraform output.

## Ansible

1. Navigate to the `ansible` directory:
   ```sh
   cd ansible
   ```

2. Update the `hosts` file with the public IP addresses of the virtual machines.

3. Run the Ansible playbook to install Apache on the virtual machines:
   ```sh
   ansible-playbook -i hosts playbook.yml
   ```
