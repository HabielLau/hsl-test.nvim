#!/usr/bin/env bash

# vpanime-girl colors for Tmux

set -g mode-style "fg=#438dbb,bg=#2a1a55"

set -g message-style "fg=#438dbb,bg=#2a1a55"
set -g message-command-style "fg=#438dbb,bg=#2a1a55"

set -g pane-border-style "fg=#2a1a55"
set -g pane-active-border-style "fg=#438dbb"

set -g status "on"
set -g status-justify "left"

set -g status-style "fg=#438dbb,bg=#22124e"

set -g status-left-length "100"
set -g status-right-length "100"

set -g status-left-style NONE
set -g status-right-style NONE

set -g status-left "#[fg=#140a2e,bg=#438dbb,bold] #S #[fg=#438dbb,bg=#22124e,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#22124e,bg=#22124e,nobold,nounderscore,noitalics]#[fg=#438dbb,bg=#22124e] #{prefix_highlight} #[fg=#2a1a55,bg=#22124e,nobold,nounderscore,noitalics]#[fg=#438dbb,bg=#2a1a55] %Y-%m-%d  %I:%M %p #[fg=#438dbb,bg=#2a1a55,nobold,nounderscore,noitalics]#[fg=#140a2e,bg=#438dbb,bold] #h "
if-shell '[ "$(tmux show-option -gqv "clock-mode-style")" == "24" ]' {
  set -g status-right "#[fg=#22124e,bg=#22124e,nobold,nounderscore,noitalics]#[fg=#438dbb,bg=#22124e] #{prefix_highlight} #[fg=#2a1a55,bg=#22124e,nobold,nounderscore,noitalics]#[fg=#438dbb,bg=#2a1a55] %Y-%m-%d  %H:%M #[fg=#438dbb,bg=#2a1a55,nobold,nounderscore,noitalics]#[fg=#140a2e,bg=#438dbb,bold] #h "
}

setw -g window-status-activity-style "underscore,fg=#8e8b9c,bg=#22124e"
setw -g window-status-separator ""
setw -g window-status-style "NONE,fg=#8e8b9c,bg=#22124e"
setw -g window-status-format "#[fg=#22124e,bg=#22124e,nobold,nounderscore,noitalics]#[default] #I  #W #F #[fg=#22124e,bg=#22124e,nobold,nounderscore,noitalics]"
setw -g window-status-current-format "#[fg=#22124e,bg=#2a1a55,nobold,nounderscore,noitalics]#[fg=#438dbb,bg=#2a1a55,bold] #I  #W #F #[fg=#2a1a55,bg=#22124e,nobold,nounderscore,noitalics]"

# tmux-plugins/tmux-prefix-highlight support
set -g @prefix_highlight_output_prefix "#[fg=#b2008b]#[bg=#22124e]#[fg=#22124e]#[bg=#b2008b]"
set -g @prefix_highlight_output_suffix ""
