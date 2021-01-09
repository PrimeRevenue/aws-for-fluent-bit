FROM amazon/aws-for-fluent-bit:latest

ADD configs/pr-custom.conf /pr-custom.conf

#FirelensConfiguration:
#  Type: fluentbit
#  Options:
#    enable-ecs-log-metadata: 'true'
#    config-file-type: 'file'
#    config-file-value: '/pr-custom.conf'
