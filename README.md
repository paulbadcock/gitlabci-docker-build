# gitlabci-docker-build
This is a GitLab repo sample for building an app with Gitlab CI 

This is a proof of concept to show how to use the variable of a version number in the Dockerfile to control builds. It also shows how stages can be used with manual steps to control the tagging of a container after it has been tested and reviewed.

The .gitlab-ci.yml file is very generic will use the repo name to name the container and publish it to a docker registry.

The first container pushed will use the Git commit sha as the label for its container. This step could be removed and the build line changed to tag it directly as the version number. 

You also will need to enable a gitlab ci runner that has access to docker. You can also specify an external to the runner docker host by setting the variable DOCKER_HOST to tcp://servername:4243 and allowing remote TCP connections on that docker host to the gitlab multirunner. You can place this variable in your Project > Settings > CI/CD Pipelines secret variable.

