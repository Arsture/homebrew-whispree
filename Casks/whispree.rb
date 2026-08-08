cask "whispree" do
  version "0.1.16"
  sha256 "a8141321e762293b41b47d57ebac362054998f19f7192120e7621c5348ecb5b1"

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
