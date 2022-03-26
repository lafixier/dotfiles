cd ~/

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_user_key_bindings
    bind \cr peco_select_history
end

set -g fish_prompt_pwd_dir_length 0
set -g theme_color_scheme dracula
set -g theme_display_cmd_duration no
set -g theme_display_date no
set -g theme_display_git_master_branch yes
set -g theme_newline_cursor yes

alias g="git"
alias gg="cz c"

