FROM ruby:2.6.6
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
RUN mkdir /myapp
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  apt-get update -qq && \
  apt-get install -y vim nodejs sqlite3 libsqlite3-dev yarn && \
  apt-get clean

WORKDIR /myapp
RUN gem install bundler:2.2.16
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
COPY package.json /myapp/package.json
COPY yarn.lock /myapp/yarn.lock
RUN bundle install
RUN yarn install
COPY . /myapp

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 5000

CMD ["rails", "server", "-b", "0.0.0.0"]
