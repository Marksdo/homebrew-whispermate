cask "whispermate" do
  version "12.4"
  sha256 "db3ff3a7b88e6e43420d22fbd20a99d1d2e0a412f9e4c10ef5780dc689831acf"

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
