locals {
  environment         = split("_", terraform.workspace)[0]
  aws_region          = split("_", terraform.workspace)[1]
  project_name        = var.tags["Project"] != null ? var.tags["Project"] : "unknown"

  tags = merge (var.tags, {
    Project = local.project_name
  })
}

locals {
  docker_dirs = toset(compact(split(",", data.external.docker_dirs.result.dirs)))
}
