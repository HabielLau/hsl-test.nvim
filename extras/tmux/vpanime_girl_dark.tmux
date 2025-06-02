#!/usr/bin/env bash

# vpanime-girl colors for Tmux

set -g mode-style "fg=#a80e94,bg=#282248"

set -g message-style "fg=#a80e94,bg=#282248"
set -g message-command-style "fg=#a80e94,bg=#282248"

set -g pane-border-style "fg=#282248"
set -g pane-active-border-style "fg=#a80e94"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#a80e94,bg=#1c1546"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#201b3a,bg=#a80e94,bold] #S #[fg=#a80e94,bg=#1c1546,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#1c1546,bg=#1c1546,nobold,nounderscore,noitalics]#[fg=#a80e94,bg=#1c1546] #{prefix_highlight} #[fg=#282248,bg=#1c1546,nobold,nounderscore,noitalics]#[fg=#a80e94,bg=#282248] %Y-%m-%d  %I:%M %p #[fg=#a80e94,bg=#282248,nobold,nounderscore,noitalics]#[fg=#201b3a,bg=#a80e94,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#1c1546,bg=#1c1546,nobold,nounderscore,noitalics]#[fg=#a80e94,bg=#1c1546] #{prefix_highlight} #[fg=#282248,bg=#1c1546,nobold,nounderscore,noitalics]#[fg=#a80e94,bg=#282248] %Y-%m-%d  %H:%M #[fg=#a80e94,bg=#282248,nobold,nounderscore,noitalics]#[fg=#201b3a,bg=#a80e94,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#abaac9,bg=#1c1546"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#abaac9,bg=#1c1546"
setw -g window-status-format "#[fg=#1c1546,bg=#1c1546,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#1c1546,bg=#1c1546,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#1c1546,bg=#282248,nobold,nounderscore,noitalics]#[fg=#a80e94,bg=#282248,bold] #I  #W #F #[fg=#282248,bg=#1c1546,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#140a32]#[bg=#1c1546]#[fg=#1c1546]#[bg=#140a32]"
set -g @prefix_highlight_output_suffix ""
