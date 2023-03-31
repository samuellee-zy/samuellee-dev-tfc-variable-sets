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
  key             = "GITHUB_TOKEN"
  value           = "INSERT API TOKEN HERE"
  category        = "terraform"
  description     = "Github Personal Token"
  sensitive       = true
  variable_set_id = tfe_variable_set.samuellee-dev-github-token.id
}

resource "tfe_variable" "hcp-client-id" {
  key = "HCP_CLIENT_ID"
  value = "INSERT CLIENT ID HERE"
  category = "env"
  description = "HCP Demo org Client ID"
  sensitive = false
  variable_set_id = tfe_variable_set.samuellee-dev-hcp-iam.id
}

resource "tfe_variable" "hcp-client-secret" {
  key = "HCP_CLIENT_SECRET"
  value = "INSERT CLIENT SECRET HERE"
  category = "env"
  description = "HCP Demo org Client SECRET"
  sensitive = true
  variable_set_id = tfe_variable_set.samuellee-dev-hcp-iam.id
}
