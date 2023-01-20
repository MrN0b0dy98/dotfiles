# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'

# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'

alias glsa='git log --graph --decorate --format=\"%C(yellow)%h %Cblue%ad %Cgreen%<(8,trunc)%aN%C(auto)%d %Creset%<(80,trunc)%s\" --date=short --all -n 10'
alias gls='git log --graph --decorate --format=\"%C(yellow)%h %Cblue%ad %Cgreen%<(8,trunc)%aN%C(auto)%d %Creset%<(80,trunc)%s\" --date=short -n 10'
alias glola='git log --graph --decorate --format=\"%C(yellow)%h %Cblue%ad %Cgreen%<(8,trunc)%aN%C(auto)%d %Creset%<(80,trunc)%s\" --date=short --all'
alias glol='git log --graph --decorate --format=\"%C(yellow)%h %Cblue%ad %Cgreen%<(8,trunc)%aN%C(auto)%d %Creset%<(80,trunc)%s\" --date=short'
alias glgg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'