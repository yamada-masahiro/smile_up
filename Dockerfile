FROM ruby:3.2.2

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client vim && apt-get -y upgrade

WORKDIR /smile_up

COPY Gemfile /smile_up/Gemfile
COPY Gemfile.lock /smile_up/Gemfile.lock

RUN bundle install

COPY . /smile_up

# RUN yarn install && bundle exec rails webpacker:install

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
