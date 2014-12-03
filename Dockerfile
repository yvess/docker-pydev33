FROM yvess/dev
MAINTAINER Yves Serrano <y@yas.ch>

RUN add-apt-repository ppa:fkrull/deadsnakes && \
    apt-get update && apt-get install -yq \
        python3.3 python3.3-dev && \
    pyvenv-3.3 /var/py33 && \
    curl -SL 'https://bootstrap.pypa.io/get-pip.py' -o /tmp/get-pip.py && \
    . /var/py33/bin/activate && python /tmp/get-pip.py --force-reinstall && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY root/_bashrc /root/.bashrc
