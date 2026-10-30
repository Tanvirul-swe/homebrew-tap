cask "vetrolog" do
  version "1.5.0"
  sha256 "e22982809eb17677a29fe4e7cb86bc5eeb15aed1da23dc2a37345497628fd6db"

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
