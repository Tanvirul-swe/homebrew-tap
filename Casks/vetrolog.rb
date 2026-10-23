cask "vetrolog" do
  version "1.3.1"
  sha256 "85695bb4477b40678b9c3ac88a743e4e06cd3641bad784f4ec7d57f1133e1378"

  url "https://github.com/Tanvirul-swe/vetrolog/releases/download/v#{version}/VetroLog-macOS-Universal.dmg"
  name "VetroLog"
  desc "Real-time Mobile SQLite Database Inspector for Flutter, Android & React Native"
  homepage "https://vetro.hifzio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "VetroLog.app"

  zap trash: [
    "~/.vetrolog",
    "~/Library/Preferences/com.wails.vetrolog.plist",
    "~/Library/Saved Application State/com.wails.vetrolog.savedState",
  ]
end
