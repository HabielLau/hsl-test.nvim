    # vpanime-girl Color Palette
    set -l foreground ffffff
    set -l selection 306282
    set -l base01 675e7d
    set -l red 812ddb
    set -l orange a016c9
    set -l yellow b2008b
    set -l green 569900
    set -l purple 746dc4
    set -l cyan 299ca2
    set -l pink e028da

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

  