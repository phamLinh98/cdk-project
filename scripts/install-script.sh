#!/bin/bash

echo "Install script is running..."
ls -la

# Install AWS CLI and CDK
echo "Installing dependencies"
npm install -g aws-cdk@2
npm install
npm install --save-dev @types/node

echo "Check versions"
node -v
npm -v
npx -v
aws --version
cdk --version