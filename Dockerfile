#FROM ubuntu
FROM frolvlad/alpine-python3

# Set the working directory to /app
WORKDIR /app

# apt-get
#RUN apt-get update && apt-get install -y python3-pip git

# Get latest Steven Black hosts from git
#RUN git clone https://github.com/StevenBlack/hosts.git

COPY hosts /app/hosts

# Install required packages specified in requirements.txt
RUN pip3 install --user -r /app/hosts/requirements.txt
