HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000


source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# Cuda
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.2/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}


# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"


# Alias

alias ll="ls -la --group-directories-first --color=auto"
alias c="clear"
alias cd="z"

alias wezterm='flatpak run org.wezfurlong.wezterm'
alias zshconfig="nvim ~/.zshrc"
alias weztermconfig="nvim ~/.config/wezterm/wezterm.lua"

alias py="python3"
alias src=" source ~/.init.sh"
