cask "snapmio" do
  version "0.5.0"
  sha256 "25c99dcb35e618e6fb0c268ff786eff3a13ac5f8b795fecdd9874485babc34ec"

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
