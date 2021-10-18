#!/bin/bash
tmux neww -n:deploy
tmux split-window -h
tmux split-window -v
tmux split-window -v
tmux select-layout main-vertical
