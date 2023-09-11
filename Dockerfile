FROM ubuntu:latest

RUN apt-get upgrade && apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install pip -y

RUN mkdir -p /root/to-do/database

COPY app/ /root/to-do/app/
COPY run.py /root/to-do/run.py
COPY requirements.txt /root/to-do/requirements.txt

WORKDIR /root/to-do

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python3", "run.py"]