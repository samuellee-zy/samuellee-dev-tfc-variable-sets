resource "tfe_variable" "samueleezy-aws-access-key-id" {
  key             = "AWS_ACCESS_KEY_ID"
  value           = "TEST"
  category        = "env"
  description     = "Access Key ID for AWS account"
  variable_set_id = tfe_variable_set.samuellee-dev-aws-variable-set.id
}

resource "tfe_variable" "samueleezy-aws-secret-access-key" {
  key             = "AWS_SECRET_ACCESS_KEY"
  value           = "INSERT-SECRET-ACCESS-KEY-HERE"
  category        = "env"
  description     = "Secret Access Key for AWS account"
  sensitive       = true
  variable_set_id = tfe_variable_set.samuellee-dev-aws-variable-set.id
}

resource "tfe_variable" "user-api-token" {
  key             = "TFE_TOKEN"
  value           = "INSERT API TOKEN HERE"
  category        = "env"
  description     = "API Token for accessing TFC org"
  sensitive       = true
  variable_set_id = tfe_variable_set.samuellee-dev-tfe-token.id
}

resource "tfe_variable" "github-personal-token" {
  key             = "Oauth_Token"
  value           = "INSERT API TOKEN HERE"
  category        = "terraform"
  description     = "Github Personal Token"
  sensitive       = true
  variable_set_id = tfe_variable_set.samuellee-dev-github-token.id
}
