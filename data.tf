data "tfe_outputs" "samuellee-dev-project-outputs" {
  workspace    = var.samuelleeOrgProject
  organization = var.orgName
}

data "tfe_workspace" "aws-doormat-workspace" {
  name         = var.aws-doormat-workspace-name
  organization = var.orgName
}

data "tfe_variables" "aws-doormat-variables" {
  workspace_id = var.aws-doormat-workspace-id
}

locals {
  access_key         = try(data.tfe_variables.workspace_vars[var.aws-doormat-workspace-id]["AWS_ACCESS_KEY_ID"].value, null)
  secret_key         = try(data.tfe_variables.workspace_vars[var.aws-doormat-workspace-id]["AWS_SECRET_ACCESS_KEY"].value, null)
  session_token      = try(data.tfe_variables.workspace_vars[var.aws-doormat-workspace-id]["AWS_SESSION_TOKEN"].value, null)
  session_expiration = try(data.tfe_variables.workspace_vars[var.aws-doormat-workspace-id]["AWS_SESSION_EXPIRATION"].value, null)
}
