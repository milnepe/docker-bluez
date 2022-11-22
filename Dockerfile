# Run the Bluez stack in a Docker container

FROM python:3.7.15-bullseye

RUN apt-get update

RUN apt-get install -y bluez bluetooth

COPY entrypoint.sh .

#CMD ./entrypoint.sh

ENTRYPOINT sh entrypoint.sh
