FROM julia:latest

RUN apt update && \
    apt-get install -y curl software-properties-common && \
    curl -sL https://deb.nodesource.com/setup_15.x | bash - && \
    apt-get install -y nodejs

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser

RUN chown -R appuser:appuser /home

# use the -b flag to get a specific branch from gtit clone

WORKDIR /usr/local

# Env vars for the nvidia-container-runtime.
USER appuser
CMD /bin/bash
