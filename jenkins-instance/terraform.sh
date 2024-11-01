#!/bin/bash

terraform init
terraform apply -var-file=var.tfvars -auto-approve