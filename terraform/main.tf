module "cds" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "wareroom-darnel-first@xperiencops.com"
    AccountName               = "cds1-aft"
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
  }

  account_customizations_name = "Costumer Data Store Single Tenant Account"
}
