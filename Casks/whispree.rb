cask "whispree" do
  version "0.0.23"
  sha256 "ee3f2a8a6108e1ad5698cc61c604a4e3c1fc6b744205de49607861f2d03634eb"

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
