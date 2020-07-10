FROM ubuntu:latest

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade

# Install dependencies
RUN apt-get install -y git curl wget jq

# Install JDK 8
RUN apt -y install openjdk-8-jdk openjdk-8-jre

# cleanup
RUN apt-get autoremove -y
