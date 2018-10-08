#!/bin/bash


echo "We must run from the backend directory."
cd ..

echo "Building lambdas"
npm run build-lambdas

echo "Updating lambdas on AWS"
aws lambda update-function-code --function-name $(cat lambdas/function.name) --zip-file fileb://lambdas/crud-lambda.zip

