FROM python:3.7.3-stretch

WORKDIR /usr/src

RUN apt-get update
RUN apt-get install -y --no-install-recommends sudo net-tools openvswitch-testcontroller mininet vim
RUN pip install --upgrade pip
RUN pip install ryu

EXPOSE 9487