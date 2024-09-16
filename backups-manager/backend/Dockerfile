FROM debian:stable

RUN apt update && apt install -y python3-pip python3.11-venv

COPY files /root/

WORKDIR /root/files/

RUN ls

RUN python3 -m venv .venv

RUN . ./.venv/bin/activate

RUN ./.venv/bin/pip3 install -r requirements.txt

CMD ["c-entry.sh"]
