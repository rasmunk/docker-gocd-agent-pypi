FROM ucphhpc/gocd-agent-docker:v23.4.0

LABEL MAINTAINER="Rasmus Munk <rasmus.munk@nbi.ku.dk>"

USER root

# Docker requirements
RUN apt update && apt install -y \
    python3-dev \
    python3-pip \
    python3-venv \
    make \
    && rm -rf /var/lib/apt/lists/*;

WORKDIR /usr/bin
# Ensure that python base links are present
RUN ln -s python3 python

WORKDIR /

# Use twine to publish the package
RUN pip3 install twine

# Update the PATH
ENV PATH=/home/go/.local/bin:$PATH
