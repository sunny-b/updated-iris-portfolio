FROM phusion/passenger-ruby23:0.9.33

ENV HOME /root
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install yarn

CMD ["/sbin/my_init"]

RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default

ADD nginx/iris-site.conf /etc/nginx/sites-enabled/iris-site.conf
ADD nginx/rails-env.conf /etc/nginx/main.d/rails-env.conf
ADD nginx/app-env.conf /etc/nginx/conf.d/00_app_env.conf

WORKDIR /home/app/iris-site
COPY . .
RUN chown -R app:app /home/app
RUN bundle check || bundle install --without development test

ENV RAILS_ENV production
ENV RACK_ENV production

RUN bundle exec rake assets:precompile

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
