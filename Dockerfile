FROM ubuntu:oracular-20250225@sha256:b23ab405b8f2f752d5a1e441d636c6130ce95ae34a2e5acfeb0f193895719c50
ENV ANSIBLE_VERSION 2.16.14
RUN apt-get update; \
    apt-get install -y gcc python3; \
    apt-get install -y python3-pip; \
    apt-get clean all
RUN pip3 install --upgrade pip; \
    pip3 install "ansible==${ANSIBLE_VERSION}"; \
    pip3 install ansible
