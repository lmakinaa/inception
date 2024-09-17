FROM debian:buster

RUN apt update && apt install -y python3-pip python3-venv

COPY files /root/files/

COPY c-entry.sh /root/files/c-entry.sh

WORKDIR /root/files/

RUN python3 -m venv .venv && . ./.venv/bin/activate && ./.venv/bin/pip3 install -r requirements.txt && ./.venv/bin/pip3 install waitress

RUN ./.venv/bin/pip3 install flask-cors

EXPOSE 5000:5000

CMD ["/root/files/c-entry.sh"]
