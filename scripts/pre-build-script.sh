# #!/bin/bash

echo "Pre-build script is running..."
ls -la

# Copy source code from S3 bucket to src directory
echo "Copying source code from S3 bucket to src directory"
mkdir -p src/rebuild
aws s3 cp s3://lambda-project-bundle-source/ src/rebuild/ --recursive
ls -la
ls -la src/rebuild

# Bootstrap CDK
cdk bootstrap aws://650251698778/ap-northeast-1