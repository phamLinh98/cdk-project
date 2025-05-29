# #!/bin/bash

# echo "Pre-build script is running..."

# # Prebuild Pharse
# echo "Running pre-build pharse"
# npx tsc

# echo "CDK bootstrap"
# cdk bootstrap aws://650251698778/ap-northeast-1

# echo "Bundle source code"
# npm run bundle-esbuild


#!/bin/bash

echo "Pre-build script is running..."

# Prebuild Phase
echo "Running pre-build phase"

# Vào repo lambda-project trước
cd /codebuild/lambda-source

# Bundle source code tại repo lambda-project
npm install
npm run bundle-esbuild

# Quay lại repo chính (cdk-project) để deploy
cd /codebuild/input

echo "CDK bootstrap"
cdk bootstrap aws://650251698778/ap-northeast-1
