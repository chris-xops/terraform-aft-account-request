module "cmdb-echo" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-cmdb-echo@xops.io"
    AccountName               = "cmdb-echo"
    ManagedOrganizationalUnit = "CDS"
    SSOUserEmail              = "chris@xperiencops.com"
    SSOUserFirstName          = "CDS1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Managed_by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "XOPS DevOps"
    change_reason       = "CDS single tenant account creation"
  }

  custom_fields = {
    group = "prod"
    vpc_cidr = "10.50"
    vpc_name = "cmdb-echo-vpc-prod"
    vpc_cidr_2 = "10.51"
    vpc_name_2 = "cmdb-echo-vpc-prod-west"
  }

  account_customizations_name = "cds"
}

module "cmdb-bbyit" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-cmdb-bbyit-prod@xops.io"
    AccountName               = "cmdb-bbyit-prod"
    ManagedOrganizationalUnit = "CDS"
    SSOUserEmail              = "chris@xperiencops.com"
    SSOUserFirstName          = "CDS1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Managed_by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "XOPS DevOps"
    change_reason       = "CDS single tenant account creation"
  }

  custom_fields = {
    group = "prod"
    vpc_cidr = "10.45"
    vpc_name = "cmdbbbyit-prod-vpc-prod"
    vpc_cidr_2 = "10.49"
    vpc_name_2 = "cmdbbbyit-prod-vpc-prod-west"
  }

  account_customizations_name = "cds"
}

module "platform_prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-platform-platform-prod@xops.io"
    AccountName               = "platform-prod"
    ManagedOrganizationalUnit = "Platform"
    SSOUserEmail              = "chris@xperiencops.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Managed_by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "XOPS DevOps"
    change_reason       = "CDS single tenant account creation"
  }

  custom_fields = {
    group = "prod"
    vpc_cidr = "10.46"
    vpc_name = "platform-prod-vpc-prod"
    vpc_cidr_2 = "10.47"
    vpc_name_2 = "platform-prod-vpc-prod-west"
  }

  account_customizations_name = "platform"
}

module "platform-sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-platform-platform-sandbox@xops.io"
    AccountName               = "platform-sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "chris@xperiencops.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Managed_by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "XOPS DevOps"
    change_reason       = "CDS single tenant account creation"
  }

  custom_fields = {
    group = "prod"
    vpc_cidr = "10.52"
    vpc_name = "xops-platform-sandbox-vpc-prod"
    vpc_cidr_2 = "10.53"
    vpc_name_2 = "xops-platform-sandbox-vpc-prod-west"
  }

  account_customizations_name = "platform"
}

module "cmdb-sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-cmdb-sandbox@xops.io"
    AccountName               = "cmdb-sandbox"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "chris@xperiencops.com"
    SSOUserFirstName          = "CDS1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Managed_by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "XOPS DevOps"
    change_reason       = "CDS single tenant account creation"
  }

  custom_fields = {
    group = "prod"
    vpc_cidr = "10.44"
    vpc_name = "cmdb-sandbox-vpc-prod"
    vpc_cidr_2 = "10.48"
    vpc_name_2 = "cmdb-sandbox-vpc-prod-west"
  }

  account_customizations_name = "cds"
}

module "cmdb-sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-sandbox-cmdb-sandbox2@xops.io"
    AccountName               = "cmdb-sandbox2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "chris@xperiencops.com"
    SSOUserFirstName          = "CDS1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Managed_by" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "XOPS DevOps"
    change_reason       = "CDS single tenant account creation"
  }

  custom_fields = {
    group = "prod"
    vpc_cidr = "10.54"
    vpc_name = "cmdb-sandbox-2-vpc-prod"
    vpc_cidr_2 = "10.55"
    vpc_name_2 = "cmdb-sandbox-2-vpc-prod-west"
  }

  account_customizations_name = "cds"
}