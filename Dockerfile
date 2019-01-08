FROM python:3-alpine

COPY hosts /opt/hosts

RUN apk add --update build-base libxml2-dev libxslt-dev

RUN pip3 install --user -r /opt/hosts/requirements.txt
