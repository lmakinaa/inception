FROM debian:stable

RUN apt update && apt install -y vsftpd

RUN adduser --home /wp "test" --disabled-password && printf "admin\nadmin" | passwd "test"

#RUN mkdir -p /var/run/vsftpd/empty && chown -R test:test /wp && chmod +w /wp
RUN mkdir -p /var/run/vsftpd/empty && chmod +w /wp 

RUN echo "write_enable=YES\npasv_enable=YES\nchroot_local_user=YES\npasv_min_port=40000\npasv_max_port=50000\npam_service_name=ftp\nallow_writeable_chroot=YES" >> /etc/vsftpd.conf

RUN echo "test" > /etc/ftpusers

EXPOSE 21
EXPOSE 20
EXPOSE 40000-50000

CMD ["vsftpd"]
