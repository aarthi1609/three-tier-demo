Three-Tier Application Deployment on AWS with Terraform

This repository contains Terraform code to deploy a three-tier web application on AWS. The application architecture is divided into three layers: Presentation (Frontend), Application (Backend), and Data (Database). Each layer is hosted on separate EC2 instances to ensure scalability, maintainability, and fault tolerance.

What is Three-Tier Architecture?

Three-tier architecture is a well-established software application architecture that organizes applications into three logical and physical computing tiers:
- Presentation Tier (User Interface): This layer handles the user interface and user interaction.
- Application Tier (Business Logic): This layer processes the data, handling the core functionality of the application.
- Data Tier (Database Management): This layer stores and manages the data required by the application.

What is Terraform?

Terraform is an open-source infrastructure as code software tool created by HashiCorp. Users define and provision data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.

Prerequisites

Before deploying the application, ensure you have the following:
- Basic knowledge of AWS and Terraform.
- An AWS account with appropriate permissions to create resources.
- AWS Access and Secret Key.
- Terraform installed on your local machine.
- AWS CLI configured with access keys for programmatic access.

Infrastructure Setup

The Terraform code in this repository performs the following tasks:
- Creates a VPC with the specified CIDR block in the desired AWS region.
- Creates subnets for each tier (Presentation, Application, Data).
- Sets up an Internet Gateway (IGW) and a NAT Gateway.
- Configures route tables for proper routing.
- Deploys an Amazon RDS instance for the database layer.
- Configures security groups for the web layer.
- Launches EC2 instances for web servers.
- Sets up an Application Load Balancer (ALB) for the web servers.

Deployment Steps

1. terraform init

    This command initializes a working directory containing Terraform configuration files.

2. terraform plan

    This command creates an execution plan, which lets you preview the changes Terraform will make to your infrastructure.

3. terraform validate

    This command validates the configuration files in a directory, ensuring the configuration is syntactically valid and internally consistent.

4. terraform apply

    This command applies the changes required to reach the desired state of the configuration.

You can customize the deployment by modifying the Terraform variables in the `terraform.tfvars` file. Customizable options include instance types, the number of instances, database configurations...
