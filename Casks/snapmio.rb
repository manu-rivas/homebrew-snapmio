cask "snapmio" do
  version "0.4.1"
  sha256 "1c965ea0d42dd60ed5ccdd7b7edb400da6afb53cdd0e973bce641e2eb57c8ce8"

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
