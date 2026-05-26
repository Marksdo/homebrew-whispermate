cask "whispermate" do
  version "12.8,609"
  sha256 "3f9bcceab5c6c254e8d77bd550c84cdc1383c929e440c5c3c53dc2e189215aa1"

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
