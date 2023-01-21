if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# Create macOS Developer folder

echo "› mkdir Developer"
mkdir $HOME/Developer
