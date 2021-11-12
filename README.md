# aws-for-fluent-bit

* see branch "cloudwatch-hardcode" for :cloudwatch-hardcode tag.

Usage:
pr-cloudwatch.conf - Used for logging sidecar to send logs in a container via shared mount.

Path must mounted as: /tmp/logdir within the fluentbit container

Environmental Variables used for Output configuration
`AWS_REGION` - specify CloudWatch region
`AWS_CLOUDWATCH_LOG_GROUP_NAME` - specify Cloudwatch log group Name *note assumes it already exists
`AWS_CLOUDWATCH_LOG_STREAM_PREFIX` - see below
`LOG_SOURCE_APP_NAME` - see below
Used to construct Cloudwatch log stream name
/AWS_CLOUDWATCH_LOG_STREAM_PREFIX/LOG_SOURCE_APP_NAME/~filepath~

Sample Cloudformation config
```
MountPoints:
  - ContainerPath: /tmp/logdir/
    ReadOnly: false
    SourceVolume: shared_volume_name
FirelensConfiguration:
  Type: fluentbit
  Options:
    enable-ecs-log-metadata: 'true'
    config-file-type: 'file'
    config-file-value: '/pr-cloudwatch.conf'
```



pr-custom.conf - Used to change "log" key to "message" for alignment with Elastic Beats standard key for logs.

Sample Cloudformation conference
```
FirelensConfiguration:
  Type: fluentbit
  Options:
    enable-ecs-log-metadata: 'true'
    config-file-type: 'file'
    config-file-value: '/pr-custom.conf'
```
