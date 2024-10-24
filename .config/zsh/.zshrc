# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config//zsh//.zshrc.
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=11001
SAVEHIST=10001
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/merami/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# plugins
source ~/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[OA' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[OB' history-substring-search-down

# To customize prompt, run `p10k configure` or edit ~/.config//zsh//.p10k.zsh.
[[ ! -f ~/.config//zsh//.p10k.zsh ]] || source ~/.config//zsh//.p10k.zsh

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

## fzf 
source <(fzf --zsh)
