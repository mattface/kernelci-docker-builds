# kernelci-docker-builds
Files to build docker containers for KernelCI jenkins slaves

## lava-v2-jobs
Creates a docker image that has all the deps installed for the lava v2 job creation and submission scripts.
SSHD is started and monitored by supervisord so the container can act as a jenkins slave

## kernel-builder
Creates a docker image that has enough deps installed to run ansible from https://github.com/kernelci/builder-config2.
Then the container will ansbile itself on boot to have all the build deps needed for a kernelci builder.
SSHD and CRON are started and monitored by supervisord, allowing the mirror sync scripts to run in cron.


### build a docker image:
`docker build -t mattface/kernelci-jenkins-builder kernel-builder`

### push it to dockerhub (once you've configured your account):
`docker push mattface/kernelci-jenkins-builder`

# Using my images
kubernetes-app.yaml in each directory is a simple service description to start 1 replica on a kubernetes node, from my prebuilt dockerhub images.
Configure SSH_PASSWORD, API_TOKEN and API_URL in kubernetes-app.yaml and then apply it to your kubernetes cluster.
