FROM julia:latest

RUN apt update && \
    apt-get install -y curl software-properties-common && \
    curl -sL https://deb.nodesource.com/setup_15.x | bash - && \
    apt-get install -y nodejs

RUN apt update && \
    apt -y install \
    python3-pip \
    make \
    imagemagick \
    git

RUN pip3 install --upgrade pip \
  scipy \
  scikit-image \
  keras \
  tensorflow

CMD /bin/bash
