    # vpanime-girl Color Palette
    set -l foreground 474747
    set -l selection 4e99c9
    set -l base01 8f88a2
    set -l red a676f1
    set -l orange cd55fa
    set -l yellow ff34cb
    set -l green 3f7300
    set -l purple 736cc3
    set -l cyan 196b70
    set -l pink bb20b6

    # Syntax Highlighting Colors
    set -g fish_color_normal $foreground
    set -g fish_color_command $cyan
    set -g fish_color_keyword $pink
    set -g fish_color_quote $yellow
    set -g fish_color_redirection $foreground
    set -g fish_color_end $orange
    set -g fish_color_error $red
    set -g fish_color_param $purple
    set -g fish_color_comment $base01
    set -g fish_color_selection --background=$selection
    set -g fish_color_search_match --background=$selection
    set -g fish_color_operator $green
    set -g fish_color_escape $pink
    set -g fish_color_autosuggestion $base01

    # Completion Pager Colors
    set -g fish_pager_color_progress $base01
    set -g fish_pager_color_prefix $cyan
    set -g fish_pager_color_completion $foreground
    set -g fish_pager_color_description $base01
    set -g fish_pager_color_selected_background --background=$selection

  