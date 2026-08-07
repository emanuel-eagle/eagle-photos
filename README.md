# eagle-photos

There is a build and push pipeline that builds and deploys docker containers to ECR

There is an infra pipeline that deploys terraform resources to AWS

So far I have three modules:
1. ECR: creates the ECR repo
2. Lambda: this is to create lambdas
3. S3: this creates the S3 buckets

We will need to mount the S3 bucket as a mounted path, haven't quite decided on that yet

We will need a couple lambdas:
1. a lambda that normalizes the exposure of the jpegs, then gets a blurriness value
2. we will want to simply tag the images (jpegs and cr2s, objects in s3) as blurry
3. a lambda that runs and whenever an image is tagged as "blurry = false" it sends it to the final bucket for editing

We will also need some sort of function that adds some kind of xmp file that automatically increases the exposure of all the CR2s, as this is a significant time saver

The images need some way of getting into the first s3 bucket, they also all need to go into proper folders