FROM python:3.13-rc-slim

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Jesse_Pinkman
WORKDIR /Jesse_Pinkman
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
