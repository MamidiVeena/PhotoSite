FROM ruby:2.7.1
MAINTAINER vmamidi2@horizon.csueastbay.edu


RUN apt-get update && apt-get install -y nodejs build-essential

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . ./


EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]