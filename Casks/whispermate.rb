cask "whispermate" do
  version "12.5,595"
  sha256 "7292e14506073dde3de910d892ca14df542f6c5413f384cd19783e994ca92327"

  url "https://github.com/Marksdo/homebrew-whispermate/releases/download/v#{version.before_comma}/WhisperMateUniversal-#{version.before_comma}-#{version.after_comma}.zip"
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
