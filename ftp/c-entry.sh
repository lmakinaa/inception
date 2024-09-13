#!/bin/sh

adduser --home /wp "test" --disabled-password && printf "admin\nadmin" | passwd "test";

chown test:test /wp;

echo "write_enable=YES\npasv_enable=YES\nchroot_local_user=YES\npasv_min_port=40000\npasv_max_port=50000\npam_service_name=ftp\nallow_writeable_chroot=YES" >> /etc/vsftpd.conf;

echo "test" > /etc/ftpusers;

vsftpd