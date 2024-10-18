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

### Declaring Variables

Before running the Terraform commands, you need to declare the following variables in a `terraform.tfvars` file or pass them as command-line arguments:

- `resource_group_name`: The name of the resource group
- `location`: The location of the resource group
- `vm_size`: The size of the virtual machines
- `admin_username`: The admin username for the virtual machines
- `admin_password`: The admin password for the virtual machines
- `virtual_network_name`: The name of the virtual network
- `subnet_name`: The name of the subnet

Example `terraform.tfvars` file:
```hcl
resource_group_name = "my-resource-group"
location = "East US"
vm_size = "Standard_B1s"
admin_username = "azureuser"
admin_password = "P@ssw0rd1234"
virtual_network_name = "my-vnet"
subnet_name = "my-subnet"
```

## Ansible

1. Navigate to the `ansible` directory:
   ```sh
   cd ansible
   ```

2. Update the `hosts` file with the public IP addresses of the virtual machines.

### Declaring Variables

Before running the Ansible playbook, you need to declare the following variables in a `vars.yml` file or pass them as command-line arguments:

- `ansible_user`: The remote user for the virtual machines
- `ansible_password`: The password for the remote user

Example `vars.yml` file:
```yaml
ansible_user: azureuser
ansible_password: P@ssw0rd1234
```

3. Run the Ansible playbook to install Apache on the virtual machines:
   ```sh
   ansible-playbook -i hosts playbook.yml --extra-vars "@vars.yml"
   ```
