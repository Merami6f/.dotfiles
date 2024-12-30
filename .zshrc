# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/merami/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Custom prompt
 PROMPT="%m > %~ 
 > "

source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

## Alias

alias ll="lsd -la"
alias ls="ls --color=tty"

# kitty image
alias img='kitten icat'

#PC commands
alias off='shutdown -h now'
alias sleep='systemctl suspend'

#clear clipboard
alias cc='cliphist wipe'

