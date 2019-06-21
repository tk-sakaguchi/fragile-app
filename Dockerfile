FROM ruby:2.5.3
RUN apt-get update -qq && apt-get install -y build-essential node.js
RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
