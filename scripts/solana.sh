#!/bin/bash
tmux neww -n:deploy
tmux split-window -h
tmux send 'a29' ENTER
tmux send 'cd rpcpool' ENTER
tmux split-window -v
tmux send 'a29' ENTER
tmux send 'cd rpcpool' ENTER
tmux split-window -v
tmux send 'a29' ENTER
tmux send 'cd rpcpool' ENTER
tmux select-layout main-vertical
