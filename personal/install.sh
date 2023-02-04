if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# pCloud - download and install
curl "https://p-lux4.pcloud.com/cBZg4HNJKZciDawGZZZ7w9vc7Z2ZZjiRZkZc8JG7ZT5ZYRZLLZoHZTJZSLZiXZiRZvpZaVZ8XZGzZFZv5ZsqhnVZkGpB1rmJT6RK1TEV3FoDukV5j2aX/pCloud%20Drive%203.12.1%20macFUSE.pkg" --output "$HOME/Downloads/pCloudDrive.pkg"
sudo installer -verbose -pkg "$HOME/Downloads/pCloudDrive.pkg" -target /
rm -f $HOME/Downloads/pCloudDrive.pkg

# Switchbar - download and install
curl "https://cdn-2.webcatalog.io/switchbar/Switchbar-6.0.2-universal.dmg" --output "$HOME/Downloads/Switchbar.dmg"
sudo hdiutil attach "$HOME/Downloads/Switchbar.dmg"
sudo cp -R /Volumes/Switchbar*/Switchbar.app /Applications
cd ~
hdiutil unmount /Volumes/Switchbar*/
rm -f $HOME/Downloads/Switchbar.dmg

# TeamSpeak - download and install
curl "https://files.teamspeak-services.com/pre_releases/client/5.0.0-beta70/teamspeak-client.dmg" --output "$HOME/Downloads/TS5.dmg"
sudo hdiutil attach "$HOME/Downloads/TS5.dmg"
sudo cp -R /Volumes/TeamSpeak/TS5.app /Applications
cd ~
hdiutil unmount /Volumes/TeamSpeak/
rm -f $HOME/Downloads/TS5.dmg

# Logitech Options+ - download
curl "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip" --output "$HOME/Downloads/LogiOptions+.zip"
#unzip "$HOME/Downloads/LogiOptions+.zip" -d "$HOME/Downloads"

# Create macOS Developer folder
echo "› mkdir Developer"
mkdir $HOME/Developer

# Force restart LaunchPad (resets icon order)
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
