#! /bin/sh

tmux \
  new-session -d -s 01 "./rime --config-file=../app/run/simple-scenario/node0.ini ; read" \; \
  split-window "./rime --config-file=../app/run/simple-scenario/node1.ini; read" \; \
  split-window "./rime --config-file=../app/run/simple-scenario/node2.ini; read" \; \
  select-layout even-horizontal

tmux  \
  new-session -s 2 "./rime --config-file=../app/run/simple-scenario/node3.ini; read" \; \
  split-window "./rime --config-file=../app/run/simple-scenario/node4.ini; read" \; \
  split-window "./rime --config-file=../app/run/simple-scenario/node5.ini; read" \; \
  split-window "./rime --config-file=../app/run/simple-scenario/node6.ini; read" \; \
  select-layout tiled #even-vertical
