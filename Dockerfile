FROM rhel7.3:latest
MAINTAINER Paul Badcock <gitlab@bad.co.ck>

# Version should be set in the .gitlab.yml file
ARG VERSION

RUN yum install -y ruby-${VERSION} && \
    yum clean all

CMD /bin/ruby -v
