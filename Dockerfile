FROM tensorflow/tensorflow:latest-gpu-py3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN pip3 install keras \
    pydot_ng \
    pydot \
    pandas-datareader \
    beautifulsoup4

RUN apt update -y && \
    apt install -y \
    wget \
    vim \
    graphviz
