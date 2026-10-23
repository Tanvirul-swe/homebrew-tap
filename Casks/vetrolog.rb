cask "vetrolog" do
  version "1.3.2"
  sha256 "43ed7309e6458199ffcaf15bfa7ed3853cfdefd4eb97e784d857bcb0d2ec5189"

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
