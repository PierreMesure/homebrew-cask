cask "blitz" do
  version "1.13.67"
  sha256 "33c2485adea26e52e392b29e5da5e3c22613e2cfe491cedf6a671a5844cffe6b"

  url "https://dl.blitz.gg/download/Blitz-#{version}.dmg"
  name "Blitz"
  homepage "https://blitz.gg/"

  livecheck do
    url "https://dl.blitz.gg/download/mac"
    strategy :header_match
  end

  auto_updates true

  app "Blitz.app"

  uninstall quit: "com.blitz.app"

  zap trash: [
    "~/Library/Application Support/Blitz",
    "~/Library/Caches/com.blitz.app.ShipIt",
    "~/Library/Cookies/com.blitz.app.binarycookies",
    "~/Library/Logs/Blitz",
    "~/Library/Preferences/com.blitz.app.plist",
    "~/Library/Saved Application State/com.blitz.app.savedState",
  ]
end
