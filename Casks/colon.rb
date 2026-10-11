cask "colon" do
  version "0.6.1"
  sha256 "9b9f27368df782173094002be50e5f65bee9d70309b858d2ed24900be24ed639"

  url "https://github.com/Syfraxing/Colon/releases/download/v#{version}/Colon-#{version}.dmg"
  name "Colon"
  desc "Inline emoji picker triggered by typing a colon"
  homepage "https://github.com/Syfraxing/Colon"

  livecheck do
    url "https://github.com/Syfraxing/Colon/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

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
