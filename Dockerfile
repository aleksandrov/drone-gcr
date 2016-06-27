# Docker image for the google container registry plugin
#
#     docker build --rm=true -t plugins/drone-gcr .

FROM docker:1.11-dind

ADD drone-gcr /bin/

ENTRYPOINT [ "/usr/local/bin/dockerd-entrypoint.sh", "/bin/drone-gcr" ]
