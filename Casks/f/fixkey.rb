cask "fixkey" do
  version "1.0.3,26"
  sha256 "d435091351f755dc7790ab8389e57ce642ecec4fb7a1e002cb932b46545f60e9"

  url "https://fixkey.download/fixkey%20#{version.csv.first}.dmg",
      verified: "fixkey.download/"
  name "fixkey"
  desc "Keyboard-focused AI copilot for writing"
  homepage "https://fixkey.ai/"

  livecheck do
    url "https://fixkey.download/"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "fixkey.app"

  zap trash: [
    "~/Library/Application Support/fixkey",
    "~/Library/Caches/fixkey",
    "~/Library/Preferences/fixkey.plist",
  ]
end
