#!/bin/bash
jupyter server --ip=0.0.0.0 --port=$PORT \
  --ServerApp.root_dir="$(pwd)" \
  --ServerApp.default_url="/voila/render/01_exploring_data.ipynb" \
  --ServerApp.allow_origin='*' \
  --ServerApp.token=''
  --VoilaConfiguration.kernel_startup_timeout=120
  --VoilaConfiguration.template=default
  --VoilaConfiguration.show_tracebacks=True