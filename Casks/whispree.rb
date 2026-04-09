cask "whispree" do
  version "0.1.3"
  sha256 "7d9b72f70acf80bcc7c0b101cdddd7ba85e1078cf85294f45260a74ea6db734a"

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
