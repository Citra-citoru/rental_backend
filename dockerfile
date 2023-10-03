FROM ruby:2.6.7 as base

RUN apt-get update && apt-get install -y build-essential locales nodejs

WORKDIR /app

RUN gem install bundler

COPY Gemfile Gemfile.lock ./

RUN bundle config set force_ruby_platform true

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails","server"]