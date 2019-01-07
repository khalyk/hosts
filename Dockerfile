#FROM ubuntu
#FROM frolvlad/alpine-python3
FROM python:3-alpine

# Set the working directory to /app
#WORKDIR /app

# apt-get
#RUN apt-get update && apt-get install -y python3-pip git

# Get latest Steven Black hosts from git
#RUN git clone https://github.com/StevenBlack/hosts.git
#RUN mkdir /opt/hosts
COPY hosts /opt/hosts

RUN apk add --update gcc libxml2-dev

# Install required packages specified in requirements.txt
RUN pip3 install --user -r /opt/hosts/requirements.txt
