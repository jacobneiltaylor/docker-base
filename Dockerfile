ARG VERSION

FROM ubuntu:$VERSION

# Set up base root
RUN mkdir -p /opt/base/bin
COPY ./scripts/ /opt/base/bin/
ENV BASEROOT=/opt/base
ENV BASEVER=$VERSION
ENV PATH=$BASEROOT/bin:$PATH

# Update system and install common packages
RUN apt_pre.sh && install_packages.sh && apt_post.sh

# Install AWS CLI v2
RUN install_aws_cli.sh

ENTRYPOINT [ "/bin/bash" ]
