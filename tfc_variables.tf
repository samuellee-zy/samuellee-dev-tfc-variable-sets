resource "tfe_variable" "samueleezy-aws-access-key-id" {
  key             = "AWS_ACCESS_KEY_ID"
  value           = "INSERT-ACCESS-KEY-ID-HERE"
  category        = "env"
  description     = "Access Key ID for AWS account"
  variable_set_id = tfe_variable_set.samueleezy-aws-variable-set.id
}

resource "tfe_variable" "samueleezy-aws-secret-access-key" {
  key             = "AWS_SECRET_ACCESS_KEY"
  value           = "INSERT-SECRET-ACCESS-KEY-HERE"
  category        = "env"
  description     = "Secret Access Key for AWS account"
  sensitive       = true
  variable_set_id = tfe_variable_set.samueleezy-aws-variable-set.id
}
