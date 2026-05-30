##################################################
# Image for a Python 3 development environment
##################################################
# cSpell: disable
FROM quay.io/rofrano/nyu-devops-base:su26

ARG USERNAME=vscode
USER root

# Set up the Python development environment
WORKDIR /app
COPY Pipfile Pipfile.lock ./
RUN python -m pip install --upgrade pip pipenv && \
    pipenv install --system --dev

# Configuring insecure Docker registry
COPY config/insecure-registry.json /etc/docker/daemon.json 

# Become a regular user for development
USER $USERNAME

# Install user mode tools
COPY .devcontainer/scripts/install-tools.sh /tmp/
RUN cd /tmp && bash ./install-tools.sh
