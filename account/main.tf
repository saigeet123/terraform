resource "aws_organizations_account" "aws_account" {

  name       = var.aws_account
  email      = var.email_id
  parent_id  = var.organization_unit
  iam_user_access_to_billing = "DENY"
  lifecycle {
    prevent_destroy = true
    ignore_changes = [email,name]
  }

}
