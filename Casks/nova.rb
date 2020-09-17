cask "nova" do
  version "1.0"
  sha256 "c5414f5cf6888a8c53f91b53d5bdd1cd246e31aafad3c3bec381c10ef6a44a94"

  url "https://panic-c157.kxcdn.com/nova/Nova%20#{version}.zip"
  name "Nova by Panic"
  desc "Text editor"
  homepage "https://nova.app"

  auto_updates true

  app "Nova.app"

  zap trash: [
    "~/Library/Application Support/Nova",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.panic.nova.sfl*",
    "~/Library/Caches/com.panic.Nova",
    "~/Library/Preferences/com.panic.Nova.plist",
    "~/Library/Saved Application State/com.panic.Nova.savedState",
    "/usr/local/bin/nova"
  ]
end
