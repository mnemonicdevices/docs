FROM ruby:3.3

WORKDIR /usr/src/app
COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]