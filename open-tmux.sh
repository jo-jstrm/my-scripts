#! /bin/sh

# Author : Johannes Jestram
# Usage : required argruments: 1) desired number of panes for tmux window, 2) path  where tmux should open

#Read input
NUM_PANES=$1

#functions
split_it(){
	i=1
	while [ $i -lt $1 ]
	do
		tmux split-window -h
		i=$(( i + 1 ))
		tmux select-layout tiled
	done	
}

# Setup tmux with '$panes' number of panes
case $NUM_PANES in
	0) 
		echo "You need at least one pane."
		exit 1
		;;
	*) 
		tmux new-session -d -n srt
		tmux selectp -t 1

		split_it $NUM_PANES
		;;
esac
