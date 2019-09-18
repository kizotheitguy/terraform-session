provider "aws" {
  region = "us-west-2"
}

locals {
  common_tags = {
    Owner        = "${var.owner}"
    Environment  = "${var.environment}"
    BusinessUnit = "${var.business_unit}"
    CostCentre   = "${var.cost_center}"
  }
}

# variable "resource_group_name" {}
# variable "region" {}
# variable "owner" {}
# variable "environment" {}
# variable "business_unit" {}
# variable "cost_center" {}


variable "resource_name" {
  default = "devops101"
}

variable "region" {
  default = "westeurope"
}

variable "cost_center" {
  default = "N001"
}

variable "environment" {
  default = "Development"
}

variable "owner" {
  default = "KizoTheITGuy"
}

variable "business_unit" {
  default = "N28"
}

variable "vnet_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}