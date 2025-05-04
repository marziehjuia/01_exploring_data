#!/bin/bash
exec gunicorn voila.app:VoilaApp \
  --bind=0.0.0.0:$PORT \
  --timeout 90 \
  --worker-class=gevent \
  --threads 2 \
  --preload \
  --access-logfile -
