cask "snapmio" do
  version "0.4.0"
  sha256 "00aa9189bf1abb6405188ccb1f4294016cd4595c22c798599efb04d5e636aed6"

  url "https://snapmio.app/download/Snapmio-#{version}.dmg"
  name "Snapmio"
  desc "Annotate, redact and copy screenshots right after taking them"
  homepage "https://snapmio.app/"

  livecheck do
    url "https://snapmio.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Snapmio.app"

  zap trash: [
    "~/Library/Application Support/Snapmio",
    "~/Library/Caches/com.snapmio.Snapmio",
    "~/Library/HTTPStorages/com.snapmio.Snapmio",
    "~/Library/Preferences/com.snapmio.Snapmio.plist",
    "~/Library/Saved Application State/com.snapmio.Snapmio.savedState",
  ]
end
