FROM gocd/gocd-agent-debian-10:v21.3.0

LABEL MAINTAINER="Rasmus Munk <rasmus.munk@nbi.ku.dk>"

USER root

# Docker requirements
RUN apt update && apt install -y \
    python3-dev \
    python3-pip \
    make \
    && rm -rf /var/lib/apt/lists/*;
