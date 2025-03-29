if status is-interactive
    set fish_greeting ""
    set -g fish_prompt_pwd_dir_length 1
    

    alias vim nvim
    alias fishconf "vim ~/.config/fish/config.fish"
    alias nvimconf "vim /Users/mikelutz/.config/nvim"
    alias tmuxconf "vim /Users/mikelutz/.tmux.conf.local"
    alias ghosttyconf "vim /Users/mikelutz/Library/Application\ Support/com.mitchellh.ghostty/config"
    alias j z
    alias ls eza
    alias lst "eza --tree --level=5"
    alias ll "eza -l"
    nvm use latest > /dev/null
end

set -g NVM_DIR "$HOME/.nvm"
test -f "$NVM_DIR/nvm.sh" && source "$NVM_DIR/nvm.sh"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/anaconda3/bin/conda
    eval /opt/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/anaconda3/etc/fish/conf.d/conda.fish"
        . "/opt/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

