#!/usr/bin/env bash

# vpanime-girl colors for Tmux

set -g mode-style "fg=#336e93,bg=#d6d1f1"

set -g message-style "fg=#336e93,bg=#d6d1f1"
set -g message-command-style "fg=#336e93,bg=#d6d1f1"

set -g pane-border-style "fg=#d6d1f1"
set -g pane-active-border-style "fg=#336e93"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#336e93,bg=#dfdbf7"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#f1effa,bg=#336e93,bold] #S #[fg=#336e93,bg=#dfdbf7,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#dfdbf7,bg=#dfdbf7,nobold,nounderscore,noitalics]#[fg=#336e93,bg=#dfdbf7] #{prefix_highlight} #[fg=#d6d1f1,bg=#dfdbf7,nobold,nounderscore,noitalics]#[fg=#336e93,bg=#d6d1f1] %Y-%m-%d  %I:%M %p #[fg=#336e93,bg=#d6d1f1,nobold,nounderscore,noitalics]#[fg=#f1effa,bg=#336e93,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#dfdbf7,bg=#dfdbf7,nobold,nounderscore,noitalics]#[fg=#336e93,bg=#dfdbf7] #{prefix_highlight} #[fg=#d6d1f1,bg=#dfdbf7,nobold,nounderscore,noitalics]#[fg=#336e93,bg=#d6d1f1] %Y-%m-%d  %H:%M #[fg=#336e93,bg=#d6d1f1,nobold,nounderscore,noitalics]#[fg=#f1effa,bg=#336e93,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#635f74,bg=#dfdbf7"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#635f74,bg=#dfdbf7"
setw -g window-status-format "#[fg=#dfdbf7,bg=#dfdbf7,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#dfdbf7,bg=#dfdbf7,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#dfdbf7,bg=#d6d1f1,nobold,nounderscore,noitalics]#[fg=#336e93,bg=#d6d1f1,bold] #I  #W #F #[fg=#d6d1f1,bg=#dfdbf7,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#ff34cb]#[bg=#dfdbf7]#[fg=#dfdbf7]#[bg=#ff34cb]"
set -g @prefix_highlight_output_suffix ""
