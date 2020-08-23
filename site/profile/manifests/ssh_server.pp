class profile::ssh_server {
        package { 'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@puppetm.dexterslab.local':
                ensure => present,
                user => 'root',
                type => 'ssh-rsa',
                key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDbL5fpzpGbLnZG+tvHsCDUs2VllRmVaWnHvQGaisUaVpC7MFkW/QIA6CMtnW2VSeOktgmgm5f2dRap+vGWBfUE+yFWZoZvoA5z3OBroWgn7XZM1IeKuI2qj/KXwYNRjeNK96b6pr1ZxJkyTI1JkRAV0he66Lg1vIyvExYyPwrZAivPVcGErOSTVVlCjV4/QhF3AhL2/PMp+7h37BhFHDBDo6bpoNivuY9bp34hCtaCA5RPwJPGfQPUg+xaHFUDkO3DMA+UdSWYjyveS7S3rwI2pUXE3rDaumHl9gMk2UQTl2kOQmHSSs9wbhYWaaKqXAVv7UpFUI7Vz2m0tkXYV8u5',
        }
}
