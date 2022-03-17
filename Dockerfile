FROM ucphhpc/gocd-agent-docker:latest

LABEL MAINTAINER="Rasmus Munk <rasmus.munk@nbi.ku.dk>"

USER root

# Docker requirements
RUN apt update && apt install -y \
    python3-dev \
    python3-pip \
    make \
    && rm -rf /var/lib/apt/lists/*;

# use twine to publish the package
RUN pip3 install twine
