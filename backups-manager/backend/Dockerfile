FROM debian:stable

RUN apt update && apt install -y python3-pip

COPY files /root/

WORKDIR /root/files

RUN python3 -m venv .venv

RUN source ./venv/bin/activate

RUN pip3 install -r requirements.txt

CMD ["c-entry.sh"]
