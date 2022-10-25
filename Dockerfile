FROM ruby:2.7.2
RUN apt-get update -qq \
&& apt-get install -y nodejs postgresql-client
ADD . /myapp
WORKDIR /myapp
RUN bundle install
EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]