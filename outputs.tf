output "samuellee-dev-aws-variable-set" {
  value     = tfe_variable_set.samuellee-dev-aws-variable-set
  sensitive = true
}

output "samuellee-dev-tfe-token" {
  value = tfe_variable_set.samuellee-dev-tfe-token.id
}

output "samuellee-dev-env" {
  value = local.access_key
}
