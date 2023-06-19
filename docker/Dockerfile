# Use a lightweight base image for assembly development
FROM alpine:latest

# Install required packages
RUN apk --update --no-cache add \
    nasm \
    gcc \
    bash \
    make

# Set the working directory
WORKDIR /app

# Set the default command to start an interactive shell
CMD ["/bin/sh"]
