tmux \
  new-session  "echo 1 ; read" \; \
  split-window "echo 2 ; read" \; \
  split-window "echo 3 ; read" \; \
  split-window "echo 4 ; read" \; \
  select-layout tiled #even-vertical
