cask "whispree" do
  version "0.0.11"
  sha256 "62320338c4b7a9d317b4c3ebe6588f0728c311ac8ac1ac08761959103b27cede"

  url "https://github.com/Arsture/whispree/releases/download/v#{version}/Whispree.zip"
  name "Whispree"
  desc "macOS menu bar STT app — record speech, transcribe with WhisperKit, correct with LLM, paste"
  homepage "https://github.com/Arsture/whispree"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Whispree.app"

  zap trash: [
    "~/Library/Preferences/com.whispree.app.plist",
  ]
end
