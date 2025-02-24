FROM ruby:3.2

WORKDIR /usr/src/jekyll

COPY Gemfile Gemfile.lock ./

RUN bundle config set path '/usr/local/bundle' \
    && bundle config set deployment true \
    && bundle install


CMD ["bundle", "exec", "jekyll", "build"]

