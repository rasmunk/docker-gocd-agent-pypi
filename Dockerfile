FROM ucphhpc/gocd-agent-python:3.12

LABEL MAINTAINER="Rasmus Munk <rasmus.munk@nbi.ku.dk>"

USER root

# Docker requirements
RUN apt update && apt install -y \
    make \
    && rm -rf /var/lib/apt/lists/*;

# Use twine to publish the package
RUN pip3 install twine --break-system-packages

# Update the PATH
ENV PATH=/home/go/.local/bin:$PATH
