resource "tfe_variable_set" "samuellee-dev-aws-variable-set" {
  name         = "samuelee.zy AWS variable set"
  description  = "Variable set for local aws account"
  organization = data.tfe_outputs.samuellee-dev-project-outputs.values.tfc_org_name
}

resource "tfe_variable_set" "samuellee-dev-tfe-token" {
  name         = "samuellee-dev tfc API token"
  description  = "Variable set containing TFE token"
  organization = data.tfe_outputs.samuellee-dev-project-outputs.values.tfc_org_name
}

resource "tfe_variable_set" "samuellee-dev-github-token" {
  name         = "samuellee-dev github API token"
  description  = "Personal token for github"
  organization = data.tfe_outputs.samuellee-dev-project-outputs.values.tfc_org_name
}

resource "tfe_variable_set" "samuellee-dev-hcp-iam" {
  name = "samuellee-dev HCP Client ID and Client Secret"
  description = "Demo Org Client ID and Client Secret"
  organization = data.tfe_outputs.samuellee-dev-project-outputs.values.tfc_org_name
}


