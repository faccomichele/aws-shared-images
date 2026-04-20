resource "aws_ecr_repository" "this" {
  for_each = local.docker_dirs

  name                 = "${local.project_name}-${each.value}-${local.environment}"
  image_tag_mutability = "MUTABLE"

  tags = merge(local.tags,
    {
      File = "main.tf"
    }
  )
}
