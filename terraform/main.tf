module "cds" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-cmdb-sandbox@xops.io"
    AccountName               = "cmdb-sandbox"
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
    vpc_cidr = "10.44"
    vpc_name = "cmdb-sandbox-vpc-prod"
    vpc_cidr_2 = "10.48"
    vpc_name_2 = "cmdb-sandbox-vpc-prod-west"
  }

  account_customizations_name = "cds"
}

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

module "cds2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-cmdb-bbyit-prod@xops.io"
    AccountName               = "cmdbbbyit-prod"
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

module "xops_platform" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws-platform-platform-prod@xops.io"
    AccountName               = "xplatform-prod"
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
    vpc_name = "xops-platform-vpc-prod"
    vpc_cidr_2 = "10.47"
    vpc_name_2 = "xops-platform-vpc-prod-west"
  }

  account_customizations_name = "platform"
}

