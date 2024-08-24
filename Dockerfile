# ARM base image for running on M1 macs
FROM alpine:3.18

RUN apk add --no-cache \
    curl \
    unzip \
    bash \
    aws-cli \
    groff

ENV TERRAFORM_VERSION=1.9.3

RUN curl -LO https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_arm64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_arm64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_${TERRAFORM_VERSION}_linux_arm64.zip

RUN terraform --version
RUN aws --version

ENTRYPOINT ["/bin/bash"]