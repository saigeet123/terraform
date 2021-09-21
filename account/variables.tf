variable "aws_account" {
  type        = string
  description = "Name for the account to be created"
}

variable "email_id" {
  type        = string
  description = "Email id for the account owner"
}

variable "organization_unit" {
  type        =  string
  description = "Organization unit for the aws account"  
}
