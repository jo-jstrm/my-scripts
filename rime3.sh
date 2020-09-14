#! /bin/sh

tmux \
  new-session -s 01 "./rime --config-file=../run/local-run-no-docker/node0.ini ; read" \; \
  split-window "./rime --config-file=../run/local-run-no-docker/node1.ini; read" \; \
  split-window "./rime --config-file=../run/local-run-no-docker/node2.ini; read" \; \
  select-layout even-horizontal
