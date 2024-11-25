FROM alpine:3.14.6

ENV TERRAFORM_VERSION 1.0.7
ENV TFSEC_VERSION=v0.58.6

LABEL terraform=${TERRAFORM_VERSION}
LABEL tfsec=${TFSEC_VERSION}

# Install Terraform
RUN apk update && \
    apk add curl jq python3 bash ca-certificates git openssl openssh-client unzip wget && \
    cd /tmp && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/bin && \
    wget https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.zip -O /tmp/google-cloud-sdk.zip && \
    cd /usr/local && unzip /tmp/google-cloud-sdk.zip && \
    google-cloud-sdk/install.sh --usage-reporting=false --path-update=true --bash-completion=true && \
    google-cloud-sdk/bin/gcloud config set --installation component_manager/disable_update_check true && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/tmp/*

# Install tfsec
RUN wget -q -O tfsec https://github.com/aquasecurity/tfsec/releases/download/${TFSEC_VERSION}/tfsec-linux-amd64  \
    && chmod +x ./tfsec \
    && mv ./tfsec /usr/local/bin/tfsec

WORKDIR /work

CMD ["/bin/bash"]
