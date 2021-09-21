# fetch the aws root organization id 
data  "aws_organizations_organization" "root" {}

}
// Create aws org unit on root 
resource "aws_organizations_organizational_unit" "ous" {
  name      = var.organization_unit
  parent_id = data.aws_organizations_organization.root.roots[0].id
}
