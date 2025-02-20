FROM ruby:3.2

WORKDIR /usr/src/jekyll

COPY Gemfile Gemfile.lock ./

RUN bundle config set path '/usr/local/bundle'
RUN bundle config set deployment true
RUN bundle install


CMD ["bundle", "exec", "jekyll", "build"]

