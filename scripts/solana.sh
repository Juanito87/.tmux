#!/bin/bash
tmux neww -n:deploy
tmux split-window -h
tmux send 'a29p' ENTER
tmux split-window -v
tmux send 'a29p' ENTER
tmux split-window -v
tmux send 'a29p' ENTER
tmux select-layout main-vertical
