#!/usr/bin/env bash

$WORK_DIR="~/projects/k8s"


mkvirtualenv gcp -p python2.7
workon gcp
mkdir -p "$WORK_DIR"
cd "$WORK_DIR"

# Download git repo
git clone https://github.com/kelseyhightower/kubernetes-the-hard-way.git

# Install gcp
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-233.0.0-linux-x86_64.tar.gz
tar zxvf google-cloud-sdk-233.0.0-linux-x86_64.tar.gz google-cloud-sdk
./google-cloud-sdk/install.sh
echo "export PATH=\$PATH:$WORK_DIR/google-cloud-sdk/bin" >> ~/.zshrc

# Download cfssl to pki
wget -q --show-progress --https-only --timestamping \\n  https://pkg.cfssl.org/R1.2/cfssl_linux-amd64 \\n  https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64
chmod +x cfssl_linux-amd64 cfssljson_linux-amd64
sudo mv cfssl_linux-amd64 /usr/local/bin/cfssl
sudo mv cfssljson_linux-amd64 /usr/local/bin/cfssljson

# Install kubectl
wget https://storage.googleapis.com/kubernetes-release/release/v1.12.0/bin/linux/amd64/kubectl
chmod +x kubectl
sudo mv kubectl /usr/local/bin/


# Configure gcloud
gcloud init
gcloud config set compute/region us-west1
gcloud config set compute/zone us-west1-c
