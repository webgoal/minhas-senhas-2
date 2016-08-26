FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir /opt/minhassenhas
WORKDIR /opt/minhassenhas
ADD Gemfile /opt/minhassenhas/Gemfile
ADD Gemfile.lock /opt/minhassenhas/Gemfile.lock
RUN bundle install
ADD . /opt/minhassenhas
