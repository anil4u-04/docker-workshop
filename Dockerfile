From ubuntu:20.04

RUN apt-get update

RUN apt-get install -y python3 python3-setuptools python3-dev build-essential python3-pip


RUN apt install -y  python3-flask

COPY sampleApp.py .

ADD run.sh .

RUN chmod 755 run.sh

CMD ["./run.sh"]

EXPOSE 5000
