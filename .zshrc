HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000

# MacOS
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Ubuntu
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Cuda
export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.2/lib64\${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}


eval "$(starship init zsh)"
eval "$(zoxide init zsh)"



# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# Alias
alias ll="ls -la --color=auto"
alias c="clear"
alias cd="z"

alias zshconfig="nvim ~/.zshrc"
alias weztermconfig="nvim ~/.config/wezterm/wezterm.lua"

alias py="python3"
alias src=" source ~/.init.sh"

# Ubuntu only
# alias wezterm='flatpak run org.wezfurlong.wezterm'
