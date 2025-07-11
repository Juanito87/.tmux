#!/bin/bash

# Create a new window named 'deploy'
tmux neww -n deploy

# Pane 0: Left top
tmux send-keys -t 0 'a9' C-m
tmux send-keys -t 0 'cd rpcpool/main' C-m
tmux send-keys -t 0 'git pull' C-m
tmux rename-pane -t 0 'Main'

# Now split to create the right group
# Move to the first pane to the right of pane 0
tmux split-window -h -t 0

# Pane 2: Right top
tmux send-keys -t 2 'clear' C-m
tmux rename-pane -t 2 'AP'

# Split Pane 2 vertically to make Pane 3
tmux split-window -v -t 2
tmux send-keys -t 3 'clear' C-m
tmux rename-pane -t 3 'EU'

# Split Pane 3 vertically to make Pane 4
tmux split-window -v -t 3
tmux send-keys -t 4 'clear' C-m
tmux rename-pane -t 4 'US'

# Adjust the layout
tmux select-layout main-horizontal

# Split left pane horizontally (creates Pane 1 below Pane 0)
tmux split-window -v -t 0
tmux send-keys -t 1 'a9' C-m
tmux send-keys -t 1 'cd rpcpool' C-m
tmux send-keys -t 1 'clear' C-m
tmux rename-pane -t 1 'Inventory'

# old script
# tmux neww -n:deploy
# tmux send 'a9' ENTER
# tmux send 'cd rpcpool/main' ENTER
# tmux send 'git pull' ENTER
# tmux split-window -v
# tmux send 'a9' ENTER
# tmux send 'cd rpcpool' ENTER
# tmux send 'clear' ENTER
# tmux split-window -h
# tmux send 'clear' ENTER
# tmux split-window -v
# tmux send 'clear' ENTER
# tmux split-window -v
# tmux send 'clear' ENTER
# tmux select-layout main-vertical
