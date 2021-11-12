FROM amazon/aws-for-fluent-bit:latest

# in order to not require the need to firelens we are
# mimicing the AWS behavior of dynamically overriding the
# fluent-bit.conf config file.
ADD configs/pr-cloudwatch.conf /fluent-bit/etc/fluent-bit.conf
