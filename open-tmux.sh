#! /bin/sh

# Author : Johannes Jestram
# Usage : required argruments: 1) desired number of panes for tmux window

# Read input
NUM_PANES=$1
SESSION_NAME=$2
NAME="$2"

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
		tmux new-session -d -s $NAME		
		split_it $NUM_PANES		
		tmux attach -t $NAME
		;;
esac
