alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

# Alias for ARM or Intel
alias arm="env /usr/bin/arch -arm64 /bin/zsh --login"

alias intel="env /usr/bin/arch -x86_64 /bin/zsh --login" 

# rosetta terminal setup
if [ $(arch) = "i386" ]; then
    alias python="/usr/local/bin/python3"
    alias brew86='/usr/local/bin/brew'
    alias pyenv86="arch -x86_64 pyenv"
    alias func="/usr/local/Cellar/azure-functions-core-tools@4/4.0.4785/func"
fi
