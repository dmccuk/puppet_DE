# This will create a set of instances, load balancers and security groups in the
# specified AWS region.

Ec2_instance {
  region            => 'us-east-1',
  availability_zone => 'us-east-1a',
}

ec2_instance { ['web-1']:
  ensure          => present,
  image_id        => 'ami-67a60d7a', # EU 'ami-b8c41ccf',
#  security_groups => ['web-sg'],
  instance_type   => 't1.micro',
  subnet   => 'subnet-us-east-1',
}
