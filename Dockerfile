FROM node:6.3
RUN apt-get update -yq
RUN apt-get install default-jre -y
RUN apt-get install zip -y
RUN apt-get install unzip -y
RUN apt-get install ruby -y
RUN gem install dpl
