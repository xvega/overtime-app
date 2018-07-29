#FROM ruby:2.4.2
#RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
## Set an environment variable where the Rails app is installed to inside of Docker image
#ENV /Overtime /var/www/Overtime
#RUN mkdir /Overtime
## Set working directory
#WORKDIR /Overtime
## Setting env up
#ENV RAILS_ENV='production'
#ENV RAKE_ENV='production'
## Adding gems
#COPY Gemfile /Overtime/Gemfile
#COPY Gemfile.lock /Overtime/Gemfile.lock
#RUN bundle install --jobs 20 --retry 5
## Adding project files
#COPY . /Overtime
#RUN bundle exec rake assets:precompile
#EXPOSE 3000
#CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
#

FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /Overtime
WORKDIR /Overtime
COPY Gemfile /Overtime/Gemfile
COPY Gemfile.lock /Overtime/Gemfile.lock
RUN bundle install
COPY docker/app /Overtime