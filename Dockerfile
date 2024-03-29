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

# Use twine to publish the package
RUN pip3 install twine

# Update the PATH
ENV PATH=/home/go/.local/bin:$PATH
