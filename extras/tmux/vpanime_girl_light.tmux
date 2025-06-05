#!/usr/bin/env bash

# vpanime-girl colors for Tmux

set -g mode-style "fg=#fc44df,bg=#d2d0e5"

set -g message-style "fg=#fc44df,bg=#d2d0e5"
set -g message-command-style "fg=#fc44df,bg=#d2d0e5"

set -g pane-border-style "fg=#d2d0e5"
set -g pane-active-border-style "fg=#fc44df"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#fc44df,bg=#e0def4"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#dddbeb,bg=#fc44df,bold] #S #[fg=#fc44df,bg=#e0def4,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#e0def4,bg=#e0def4,nobold,nounderscore,noitalics]#[fg=#fc44df,bg=#e0def4] #{prefix_highlight} #[fg=#d2d0e5,bg=#e0def4,nobold,nounderscore,noitalics]#[fg=#fc44df,bg=#d2d0e5] %Y-%m-%d  %I:%M %p #[fg=#fc44df,bg=#d2d0e5,nobold,nounderscore,noitalics]#[fg=#dddbeb,bg=#fc44df,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#e0def4,bg=#e0def4,nobold,nounderscore,noitalics]#[fg=#fc44df,bg=#e0def4] #{prefix_highlight} #[fg=#d2d0e5,bg=#e0def4,nobold,nounderscore,noitalics]#[fg=#fc44df,bg=#d2d0e5] %Y-%m-%d  %H:%M #[fg=#fc44df,bg=#d2d0e5,nobold,nounderscore,noitalics]#[fg=#dddbeb,bg=#fc44df,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#7574a5,bg=#e0def4"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#7574a5,bg=#e0def4"
setw -g window-status-format "#[fg=#e0def4,bg=#e0def4,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#e0def4,bg=#e0def4,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#e0def4,bg=#d2d0e5,nobold,nounderscore,noitalics]#[fg=#fc44df,bg=#d2d0e5,bold] #I  #W #F #[fg=#d2d0e5,bg=#e0def4,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#d3cef7]#[bg=#e0def4]#[fg=#e0def4]#[bg=#d3cef7]"
set -g @prefix_highlight_output_suffix ""
