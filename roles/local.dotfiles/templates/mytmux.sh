#!/bin/bash

source ~/.bashrc

SESSION='mytmux'

session_tmux() {
  tmux new -d -s $SESSION

  ##
  tmux new-window -t $SESSION:1 -n 'servidores'
  tmux send-keys "cd ~" C-m

  ## 
  tmux new-window -t $SESSION:2 -n 'sistemas'
  tmux send-keys "cd ~ " C-m

  ## Entra na Sessão
  tmux attach -t $SESSION
}

# Se já existir a sessão aberta, entra nela
if tmux ls 2>/dev/null | grep -q mytmux ; then 
  tmux attach -t $SESSION
else 
  session_tmux
fi
