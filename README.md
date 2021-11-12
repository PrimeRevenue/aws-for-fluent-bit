# aws-for-fluent-bit

# How to use the `primerevenue-docker.jfrog.io/aws-for-fluent-bit:cloudwatch-hardcode` image in this branch

`docker run -it --rm -v $(pwd):/tmp/logdir/ -e AWS_REGION=us-east-1 -e AWS_CLOUDWATCH_LOG_GROUP_NAME=cloudwatch_log_group -e AWS_CLOUDWATCH_LOG_STREAM_PREFIX=cloudwatch_stream_prefix -e LOG_SOURCE_APP_NAME=source_app -e AWS_ACCESS_KEY_ID=somekey -e AWS_SECRET_ACCESS_KEY=dontdosecretslikethis primerevenue-docker.jfrog.io/aws-for-fluent-bit:cloudwatch-hardcode`


Path must mounted as: /tmp/logdir within the fluentbit container

Environmental Variables used for Output configuration
`AWS_REGION` - specify CloudWatch region
`AWS_CLOUDWATCH_LOG_GROUP_NAME` - specify Cloudwatch log group Name *note assumes it already exists
`AWS_CLOUDWATCH_LOG_STREAM_PREFIX` - see below
`LOG_SOURCE_APP_NAME` - see below
Used to construct Cloudwatch log stream name
/AWS_CLOUDWATCH_LOG_STREAM_PREFIX/LOG_SOURCE_APP_NAME/~filepath~
