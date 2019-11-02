FROM ruby:2.4@sha256:5730bfc9091e78875b60e95a49d943272ae9fb63eeca3983c6a80cb1a10817eb
  
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs

RUN apt-get update -qqy \
  && apt-get install -qqy \
    default-jre \
    zip \
    unzip \
    ruby \
    curl \
    gnupg \
    xvfb \
    python-pip \
    libpython-dev \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN yarn global add npm

RUN gem install dpl

RUN pip install -U pip

RUN pip install awscli
