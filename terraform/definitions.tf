locals {
  environment         = split("_", terraform.workspace)[0]
  aws_region          = split("_", terraform.workspace)[1]
  project_name        = var.tags["Project"] != null ? var.tags["Project"] : "unknown"

  docker_dirs = toset(data.external.docker_dirs.result.dirs)

  tags = merge (var.tags, {
    Project = local.project_name
  })
}
