#! /bin/sh

tmux \
  new-session -d -s 01 "./rime --config-file=../run/local-run-no-docker/node0.ini ; read" \; \
  split-window "./rime --config-file=../run/local-run-no-docker/node1.ini; read" \; \
  split-window "./rime --config-file=../run/local-run-no-docker/node2.ini; read" \; \
  select-layout even-horizontal

tmux  \
  new-session -d -s 2 "./rime --config-file=../run/local-run-no-docker/node3.ini; read" \; \
  split-window "./rime --config-file=../run/local-run-no-docker/node4.ini; read" \; \
  split-window "./rime --config-file=../run/local-run-no-docker/node5.ini; read" \; \
  split-window "./rime --config-file=../run/local-run-no-docker/node6.ini; read" \; \
  select-layout tiled #even-vertical

tmux  \
  new-session -d -s 3 "./rime --config-file=../run/local-run-no-docker/node7.ini; read"

tmux attach -t 01
