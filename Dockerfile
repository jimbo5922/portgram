FROM ruby:2.6.3

ENV BUILD_PACKAGES="build-base" \
    DB_PACKAGES="sqlite-dev" \
    RAILS_PACKAGES="tzdata nodejs imagemagick" \
    FAVORITE_PACKAGES="less"

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /workdir
WORKDIR /workdir

ADD Gemfile /workdir/Gemfile
ADD Gemfile.lock /workdir/Gemfile.lock

ENV BUNDLER_VERSION 2.1.4
RUN gem install bundler
RUN bundle install

ADD . /workdir