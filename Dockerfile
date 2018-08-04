FROM ruby:2.4.2
RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends \
    postgresql-client build-essential libpq-dev nodejs \
    && rm -rf /var/lib/apt/lists

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD rails server -b 0.0.0.0