cask "whispermate" do
  version "12.5"
  sha256 "d98383e88087f042e893dfb2211a0b827a8217af82f4cbf870ba56929ad5f309"

  url "https://github.com/Marksdo/homebrew-whispermate/releases/download/v#{version}/WhisperMateUniversal-#{version}.zip"
  name "Whisper Mate"
  desc "AI-powered audio/video transcription with CLI support"
  homepage "https://whispermate.app"

  depends_on macos: ">= :ventura"

  app "Whisper Mate Universal.app"
  binary "#{appdir}/Whisper Mate Universal.app/Contents/MacOS/Whisper Mate Universal", target: "whispermate"

  zap trash: [
    "~/Library/Application Support/com.marksdo.WhisperMate",
    "~/Library/Preferences/com.marksdo.WhisperMate.plist",
    "~/Library/Caches/com.marksdo.WhisperMate",
    "~/Library/Saved Application State/com.marksdo.WhisperMate.savedState",
  ]
end
