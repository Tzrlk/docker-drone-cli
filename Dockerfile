FROM library/alpine:latest

ENTRYPOINT [ '/usr/bin/drone' ]

# Grab whatever version of the cli is specified and put it somewhere reasonable.
ARG DRONE_CLI_VERSION
ADD https://github.com/drone/drone-cli/releases/download/${DRONE_CLI_VERSION}/drone_linux_amd64.tar.gz /usr/share/drone-cli/

# Make the cli executable and available on the path
RUN chmod +x /usr/share/drone-cli/drone \
 && ln -s /usr/share/drone-cli/drone /usr/bin/

# This is the workspace for exec commands
WORKDIR /usr/src
VOLUME  /usr/src
