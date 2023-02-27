resource "tfe_variable_set" "samueleezy-aws-variable-set" {
  name         = "samuelee.zy AWS variable set"
  description  = "Variable set for local aws account"
  organization = data.tfe_outputs.samuellee-dev-project-outputs.values.tfc_org_name
}
