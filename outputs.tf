output "samuellee-dev-aws-variable-set" {
  value = tfe_variable_set.samueleezy-aws-variable-set.id
}

output "samuellee-dev-tfe-token" {
  value = tfe_variable_set.samuellee-dev-tfe-token.id
}

output "samuellee-dev-env" {
  value = data.tfe_variables.aws-doormat-variables.env
}