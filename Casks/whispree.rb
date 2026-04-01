cask "whispree" do
  version "0.0.27"
  sha256 "f7b9ebbbf96344c563a3f9c43d46da5b913a271903b110f9977fbec6439e8403"

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
