if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/usr/bin:$PATH
export PATH=$HOME/.local/lib/python3.10/site-packages:$PATH
export PATH=$PATH/local/lib:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

POWERLEVEL10K_MODE="nerdfont-complete"
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(os_icon)

plugins=(
    git
)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias uu="sudo dnf update -y && sudo dnf upgrade -y"
alias autoremove="sudo dnf -y autoremove"
alias install="sudo dnf -y install"
alias uninstall="sudo dnf -y remove"
alias search="dnf search"
alias vim="nvim"
alias ls="lsd"
alias tree="lsd --tree"
alias py="python3"
alias add-key="eval \`ssh-agent -s\` && ssh-add ~/.ssh/key"
alias start-database="sudo -u postgres psql"
alias pip="pip3"
alias python="python3"
alias cm="chmod +x "
alias py-shebang="echo '#!/usr/bin/python3' | tee "
alias go-shebang="echo '//usr/bin/true; exec /usr/bin/env go run "'$0'" "'$@'"' | tee "
alias ls="lsd"
alias generate-key="mkdir ~/.ssh && cd ~/.ssh && ssh-keygen -t ed25519 -C 'mr.alangobryan@gmail.com'"
alias start-mysql="sudo mkdir /var/run/mysqld/ && sudo service mysql start"
alias start-mysql-root="sudo mkdir /var/run/mysqld/ && sudo service mysql start && mysql -u root -p"
alias run="mysql -u root -p"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias psql-exec="psql swan -d swan -f"
alias go-to="psql -h localhost -p 5432 -U"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS
