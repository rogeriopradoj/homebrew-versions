cask "keka-beta" do
  version "1.2.0-beta.2"
  sha256 "5c13a90f7ae38acc222b3549aff5a906a80eb1271dc075700d98d4568b402959"

  # github.com/aonez/Keka/ was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://beta.keka.io"
  name "Keka"
  homepage "https://www.keka.io/#beta"

  auto_updates true
  conflicts_with cask: "keka"

  app "Keka.app"

  zap trash: [
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
