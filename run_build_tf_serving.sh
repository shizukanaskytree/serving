#!/bin/bash
bazel build \
  --color=yes \
  --curses=yes \
  --config=cuda \
  --copt="-fPIC" \
  --verbose_failures \
  --output_filter=DONT_MATCH_ANYTHING \
  --config=nativeopt \
  tensorflow_serving/model_servers:tensorflow_model_server

