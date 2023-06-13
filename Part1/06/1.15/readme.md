
[Docker Hub](https://hub.docker.com/repository/docker/jukkaatschool/myrobotaction/general)

Can be used (or at least could 5 years ago) to run simple robot framework commands in github actions:

action.yml:

# action.yml
name: 'Run robot'
description: 'Run robot command in container'
inputs:
  robot-command:  # id of input
    description: 'Robot command'
    required: true
    default: 'tests'
outputs:
  time: # id of output
    description: 'Results'
runs:
  using: 'docker'
  image: 'Dockerfile'
  args:
    - ${{ inputs.robot-command }}