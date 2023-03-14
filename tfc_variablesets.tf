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



