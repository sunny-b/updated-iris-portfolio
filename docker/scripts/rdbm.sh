#!/bin/bash
docker run -i -t -v /app:/app --rm rails:latest bash -c "cd /app && bundle exec rake db:migrate"