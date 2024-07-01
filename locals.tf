# Environment Details
locals {
  workspaces = {
    prod  = "${var.project_name}-prod"
    stage = "${var.project_name}-stage"
    dev   = "${var.project_name}-dev"
  }
}