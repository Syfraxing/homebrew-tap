cask "colon" do
  version "0.5.0"
  sha256 "05b9b71abb7aee7ea68d2fbefc51a139d4a1fc31a7a14f55f12b2f22a3a89d80"

  url "https://github.com/Syfraxing/Colon/releases/download/v#{version}/Colon-#{version}.dmg"
  name "Colon"
  desc "Inline emoji picker triggered by typing a colon"
  homepage "https://github.com/Syfraxing/Colon"

  livecheck do
    url "https://github.com/Syfraxing/Colon/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Colon.app"

  zap trash: [
    "~/Library/Application Support/Colon",
    "~/Library/Caches/so.slayer.Colon",
    "~/Library/HTTPStorages/so.slayer.Colon",
    "~/Library/HTTPStorages/so.slayer.Colon.binarycookies",
    "~/Library/Preferences/so.slayer.Colon.plist",
    "~/Library/WebKit/so.slayer.Colon",
  ]
end
