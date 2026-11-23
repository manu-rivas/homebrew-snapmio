cask "snapmio" do
  version "0.7.0"
  sha256 "77cdd315ff6dcaa6225e480f5a906325bd064ca93e61ececf4e1e770af3d968e"

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
