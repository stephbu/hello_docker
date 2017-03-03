FROM ubuntu:latest
MAINTAINER stephbu@gmail.com

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential net-tools curl
RUN pip install --upgrade pip
ADD app.py /app.py
ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

CMD ./app.py