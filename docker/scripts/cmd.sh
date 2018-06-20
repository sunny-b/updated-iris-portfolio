#!/bin/bash
docker run -i -t -v /app:/app --rm rails:latest bash -c "cd /app && eval '$1'"
