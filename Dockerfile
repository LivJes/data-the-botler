FROM debian:latest

LABEL maintainer="liv.jes"

WORKDIR /botler

RUN apt update
RUN apt install python3 -y
RUN apt install python3-pip -y

RUN pip3 install discord
RUN pip3 install python-dotenv

COPY main.py ./
COPY .env ./

CMD ["python3", "./main.py"]