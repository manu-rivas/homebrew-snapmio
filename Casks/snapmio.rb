cask "snapmio" do
  version "0.6.0"
  sha256 "903ed8895f0d4b84fa9c77a183e56eb65205de5190eae0fdc3f43833ddedefb4"

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
