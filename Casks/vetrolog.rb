cask "vetrolog" do
  version "1.3.0"
  sha256 "489d15623f313f3f8a97ab9e08e58907651efdb8c8fb4365bedd2cdbab0ea378"

  url "https://github.com/Tanvirul-swe/vetrolog/releases/download/v#{version}/VetroLog-macOS-Universal.dmg",
      verified: "github.com/Tanvirul-swe/vetrolog/"
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
