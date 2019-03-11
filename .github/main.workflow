workflow "Build & Deploy" {
  on = "push"
  resolves = ["ballerina-platform/github-actions/cli/latest@master"]
}

action "ballerina-platform/github-actions/cli/latest@master" {
  uses = "ballerina-platform/github-actions/cli/latest@master"
  args = "build"
  secrets = ["docker_username", "docker_password"]
}
