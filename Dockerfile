ARG VERSION

FROM ubuntu:$VERSION

ARG VERSION

# Set up base root
RUN mkdir -p /opt/base/bin
COPY ./scripts/ /opt/base/bin/
ENV BASEROOT=/opt/base
ENV BASEVER=$VERSION
ENV PATH=$BASEROOT/bin:$PATH
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install common packages
RUN apt_pre.sh && install_packages.sh && apt_post.sh && update_pip.sh

# Install AWS CLI v2
RUN install_aws_cli.sh

ENTRYPOINT [ "/bin/bash" ]
