cask "whispermate" do
  version "12.4"
  sha256 "dc712289441ec9ed9ea9ce5606f227dadde9f1e01af5460ada9312ca23de0180"

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
