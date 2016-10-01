FROM ruby:2.3
MAINTAINER Alexander Andreev <cinic.rus@gmail.com>

COPY .rubocop.yml /root/.rubocop.yml

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN bundle install

WORKDIR /app
COPY . /app

ENTRYPOINT ["rubocop"]
