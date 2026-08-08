cask "whispree" do
  version "0.1.17"
  sha256 "d889f72d27ab1efa5cb57ee5cdc21ee1f512ca8be83a94e16caaee2263bbea87"

  url "https://github.com/Arsture/whispree/releases/download/v#{version}/Whispree.zip"
  name "Whispree"
  desc "macOS menu bar STT app — record speech, transcribe with WhisperKit, correct with LLM, paste"
  homepage "https://github.com/Arsture/whispree"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Whispree.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/Whispree.app"
  end

  zap trash: [
    "~/Library/Preferences/com.whispree.app.plist",
  ]
end
