# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/merami/.zshrc'

autoload -Uz compinit
compinit


function git_branch(){
	branch=$(git symbolic-ref HEAD 2> /dev/null | cut -d'/' -f3)
	if [[ $branch == "" ]]; then
		:
	else
		echo '󰊢 '$branch''
	fi
}
function git_modified(){
	modified=$(git ls-files -m -o 2> /dev/null | wc -l)
	if [[ $modified == '0' ]]; then
		:
	else
		echo '::!'$modified''
	fi
}
function git_staged(){
	staged=$(git diff --name-only --cached 2> /dev/null | wc -l)
	if [[ $staged == '0' ]]; then
		:
	else
		echo '+'$staged''
	fi
}

setopt prompt_subst
newline=$'\n'
prompt='   %~ $(git_branch)$(git_modified)$(git_staged) ${newline}$ '

source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

## Alias

alias ll='lsd -la'
alias ls='ls --color=tty'

# kitty image
alias img='kitten icat'

#PC commands
alias off='shutdown -h now'
alias sleep='systemctl suspend'

#clear clipboard
alias cc='cliphist wipe'

