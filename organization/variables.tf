variable "service_access_principals" {
  description = "Root organization service access principals"
  type        = list(string)
  default     = [
    "cloudtrail.amazonaws.com",
    "aws-artifact-account-sync.amazonaws.com",
    "config.amazonaws.com",
    "config-multiaccountsetup.amazonaws.com",
    "ds.amazonaws.com",
    "fms.amazonaws.com",
    "license-manager.amazonaws.com",
    "license-manager.member-account.amazonaws.com",
    "ram.amazonaws.com",
    "servicecatalog.amazonaws.com",
    "servicequotas.amazonaws.com",
    "sso.amazonaws.com",
    "ssm.amazonaws.com",
    "tagpolicies.tag.amazonaws.com",
  ]
}

variable "enabled_policy" {
  description = "enabling policy on root account "
  type        = list(string)
  default     = [
    "SERVICE_CONTROL_POLICY",
    "TAG_POLICY",
    "BACKUP_POLICY",
  ]

}

# create organization unit structure  here
variable "organization_unit" {
  description = "Create organization units"
  type        = string
  default     = ""
