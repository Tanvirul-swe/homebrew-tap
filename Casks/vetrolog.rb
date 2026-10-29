cask "vetrolog" do
  version "1.4.0"
  sha256 "42c5b5a6a9bbb4f116c78a0854cc59c4d38ba0fa6b79f563e6626d312dbccef3"

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
