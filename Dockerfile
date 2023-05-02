# Base image
FROM ubuntu:latest

# Update and install necessary packages
RUN apt-get update && \
    apt-get install -y curl unzip wget python3 python3-pip openssh-server git jq && \
    apt-get clean

# Install AWS CLI v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm awscliv2.zip

# Install Terraform
RUN wget https://releases.hashicorp.com/terraform/1.4.6/terraform_1.4.6_linux_amd64.zip && \
    unzip terraform_1.4.6_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform_1.4.6_linux_amd64.zip

# Set up Python3
RUN pip3 install --upgrade pip && \
    pip3 install awscli boto3

# Copy the .ssh folder from host to container
COPY ~/.ssh /root/.ssh

WORKDIR /home
CMD bash
