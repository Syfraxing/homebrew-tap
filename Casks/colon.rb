cask "colon" do
  version "0.6.0"
  sha256 "3a4dce6c28883cfb319fb9c5dd82884ebaa849911105c22e3811c5529eb681ea"

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
