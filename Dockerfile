FROM ubuntu:latest
MAINTAINER stephbu@gmail.com

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev
RUN pip install --upgrade pip
ADD app.py /app.py
ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

CMD ./app.py