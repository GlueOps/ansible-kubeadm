FROM ubuntu:oracular-20241120@sha256:102bc1874fdb136fc2d218473f03cf84135cb7496fefdb9c026c0f553cfe1b6d
ENV ANSIBLE_VERSION 2.16.14
RUN apt-get update; \
    apt-get install -y gcc python3; \
    apt-get install -y python3-pip; \
    apt-get clean all
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible
