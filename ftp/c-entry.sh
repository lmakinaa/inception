#!/bin/sh

adduser --home /wp "test" --disabled-password && printf "admin\nadmin" | passwd "test";

chown test:test /wp;

echo "
write_enable=YES
pasv_enable=YES
chroot_local_user=YES
pasv_min_port=40000
pasv_max_port=50000
pam_service_name=ftp
allow_writeable_chroot=YES
" >> /etc/vsftpd.conf;

echo "test" > /etc/ftpusers;

vsftpd