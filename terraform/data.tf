data "external" "docker_dirs" {
  program = ["python", "${path.module}/../scripts/list_docker_dirs.py", "${path.module}/../docker"]
}
