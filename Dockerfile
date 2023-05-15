# Base image
FROM hashicorp/terraform

# Set working directory
WORKDIR /app

# Copy the Terraform files into the container
COPY . .

# Install any necessary packages or dependencies
RUN apk update && apk add --no-cache git

# Install the AWS CLI
RUN apk add --no-cache \
        python3 \
        py3-pip \
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir \
        awscli boto3 \
    && rm -rf /var/cache/apk/*



# Define the entrypoint for the container
ENTRYPOINT ["sh"]