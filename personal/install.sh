if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# Download and Install pCloud
curl "https://p-lux4.pcloud.com/cBZg4HNJKZciDawGZZZ7w9vc7Z2ZZjiRZkZc8JG7ZT5ZYRZLLZoHZTJZSLZiXZiRZvpZaVZ8XZGzZFZv5ZsqhnVZkGpB1rmJT6RK1TEV3FoDukV5j2aX/pCloud%20Drive%203.12.1%20macFUSE.pkg" --output "$HOME/Downloads/pCloudDrive.pkg"
sudo installer -verbose -pkg "$HOME/Downloads/pCloudDrive.pkg" -target /
rm -f $HOME/Downloads/pCloudDrive.pkg

curl "https://cdn-2.webcatalog.io/switchbar/Switchbar-*-universal.dmg" --output "$HOME/Downloads/Switchbar.dmg"
sudo hdiutil attach "$HOME/Downloads/Switchbar.dmg"
sudo cp -R /Volumes/Switchbar*/Switchbar.app /Applications
cd ~
hdiutil unmount /Volumes/Switchbar*/
rm -f $HOME/Downloads/Switchbar.dmg

curl "https://files.teamspeak-services.com/pre_releases/client/5.0.0-beta70/teamspeak-client.dmg" --output "$HOME/Downloads/TS5.dmg"
sudo hdiutil attach "$HOME/Downloads/TS5.dmg"
sudo cp -R /Volumes/TeamSpeak/Switchbar.app /Applications
cd ~
hdiutil unmount /Volumes/TeamSpeak/
rm -f $HOME/Downloads/TS5.dmg

curl "https://download01.logi.com/web/ftp/pub/techsupport/optionsplus/logioptionsplus_installer.zip" --output "$HOME/Downloads/LogiOptions+.zip"

# Create macOS Developer folder
echo "› mkdir Developer"
mkdir $HOME/Developer
