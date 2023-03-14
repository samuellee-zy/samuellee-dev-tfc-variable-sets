data "tfe_outputs" "samuellee-dev-project-outputs" {
  workspace    = var.samuelleeOrgProject
  organization = var.orgName
}

data "tfe_workspace" "aws-doormat-workspace" {
  name         = var.aws-doormat-workspace-name
  organization = var.orgName
}

data "tfe_variables" "aws-doormat-variables-access-key" {
  workspace_id = var.aws-doormat-workspace-id
  key          = "AWS_ACCESS_KEY_ID"
}

data "tfe_variables" "aws-doormat-variables-secret-key" {
  workspace_id = var.aws-doormat-workspace-id
  key          = "AWS_SECRET_ACCESS_KEY"
}

data "tfe_variables" "aws-doormat-variables-session-token" {
  workspace_id = var.aws-doormat-workspace-id
  key          = "AWS_SESSION_TOKEN"
}

data "tfe_variables" "aws-doormat-variables-session-expiration" {
  workspace_id = var.aws-doormat-workspace-id
  key          = "AWS_SESSION_EXPIRATION"
}

locals {
  access_key         = data.tfe_variables.aws-doormat-variables-access-key.value
  secret_key         = data.tfe_variables.aws-doormat-variables-secret-key.value
  session_token      = data.tfe_variables.aws-doormat-variables-session-token.value
  session_expiration = data.tfe_variables.aws-doormat-variables-session-expiration.value
}
