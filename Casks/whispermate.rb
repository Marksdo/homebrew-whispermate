cask "whispermate" do
  version "13.4,627"
  sha256 "bdcb384243b2e08143b62aa5edc46a512e01f813f21605f0274d23023ae64228"

  url "https://github.com/Marksdo/homebrew-whispermate/releases/download/v#{version.before_comma}/WhisperMateUniversal-#{version.before_comma}-#{version.after_comma}.zip"
  name "Whisper Mate"
  desc "AI-powered audio/video transcription with CLI support"
  homepage "https://whispermate.app"

  depends_on macos: ">= :ventura"

  app "Whisper Mate Universal.app"
  binary "#{appdir}/Whisper Mate Universal.app/Contents/Resources/whispermate-cli", target: "whispermate"

  zap trash: [
    "~/Library/Application Support/com.marksdo.WhisperMate",
    "~/Library/Preferences/com.marksdo.WhisperMate.plist",
    "~/Library/Caches/com.marksdo.WhisperMate",
    "~/Library/Saved Application State/com.marksdo.WhisperMate.savedState",
  ]
end
