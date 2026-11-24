cask "korev" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://github.com/thiagosalvatore/korev/releases/latest/download/Korev-#{arch}.dmg"
  name "Korev"
  desc "Run coding agents in parallel, each in its own git worktree"
  homepage "https://korev.ai/"

  depends_on macos: :ventura

  app "Korev.app"

  zap trash: [
    "~/Library/Application Support/Korev",
    "~/Library/Caches/com.electron.korev",
    "~/Library/Caches/com.electron.korev.ShipIt",
    "~/Library/HTTPStorages/com.electron.korev",
    "~/Library/HTTPStorages/com.electron.korev.binarycookies",
    "~/Library/Logs/Korev",
    "~/Library/Preferences/com.electron.korev.plist",
    "~/Library/Saved Application State/com.electron.korev.savedState",
  ]
end
