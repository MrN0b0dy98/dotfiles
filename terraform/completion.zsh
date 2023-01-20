completion='complete -o nospace -C /opt/homebrew/bin/terraform terraform'

if test -f $completion
then
  source $completion
fi
