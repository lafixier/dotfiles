#!/usr/bin/fish


cd ~/
if status is-interactive
    # Commands to run in interactive sessions can go here
end


# peco
function fish_user_key_bindings
    bind \cr peco_select_history    # Ctrl + r
end


# fish shell
set -g fish_prompt_pwd_dir_length 0
set -g theme_color_scheme dracula
set -g theme_display_cmd_duration no
set -g theme_display_date no
set -g theme_display_git_master_branch yes
set -g theme_newline_cursor yes


# Homebrew
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# Path
fish_add_path /usr/bin/

# Nim
set -ga fish_user_paths $HOME/.nimble/bin
fish_add_path $HOME/.local/bin $local_bin

# Rust
fish_add_path $HOME/.cargo/bin $rust_path

# Python
fish_add_path $HOME/.local/lib/python3.8/site-packages
fish_add_path /usr/lib/python3/dist-packages

# Ruby
fish_add_path $HOME/.rvm/bin
# rvm default

# Yarn
fish_add_path $HOME/.yarn/bin

# Go
fish_add_path /usr/local/go/bin
set -gx GOPATH $HOME/go
fish_add_path $GOPATH
fish_add_path $GOPATH/bin


# Aliases
alias g     = "git"
alias gg    = "cz c"
alias thm   = "sudo openvpn ~/Downloads/lafixier.ovpn"
alias y     = "yarn"
alias bfg   = "java -jar $HOME/.local/bin/bfg-1.14.0.jar"
alias ch    = "code ."
alias lg    = "lazygit"
