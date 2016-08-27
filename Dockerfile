FROM ruby:2.2.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /freecycle
WORKDIR /freecycle

ADD Gemfile /freecycle/Gemfile
ADD Gemfile.lock /freecycle/Gemfile.lock

RUN bundle install

ADD . /freecycle