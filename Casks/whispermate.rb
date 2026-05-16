cask "whispermate" do
  version "12.4"
  sha256 "dabfb6cad3a81a544efc29728ba3f850910da334556748684de73c8634f7489f"

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
