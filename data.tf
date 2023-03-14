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
  access_key         = data.tfe_variables.aws-doormat-variables.variables
}
