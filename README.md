# eagle-photos

There is a build and push pipeline that builds and deploys docker containers to ECR

There is an infra pipeline that deploys terraform resources to AWS

So far I have three modules:
1. ECR: creates the ECR repo
2. Lambda: this is to create lambdas
3. S3: this creates the S3 buckets