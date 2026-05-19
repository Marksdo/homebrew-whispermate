cask "whispermate" do
  version "12.5,598"
  sha256 "5af5b1c9af51af2f5d8ab5d8e9e0bdd4c7e9493ae94d9b88ab3625dfaa677617"

  url "https://github.com/Marksdo/homebrew-whispermate/releases/download/v#{version.before_comma}/WhisperMateUniversal-#{version.before_comma}-#{version.after_comma}.zip"
  name "Whisper Mate"
  desc "AI-powered audio/video transcription with CLI support"
  homepage "https://whispermate.app"

  depends_on macos: ">= :ventura"

  app "Whisper Mate Universal.app"
  binary "#{appdir}/Whisper Mate Universal.app/Contents/MacOS/whispermate-cli", target: "whispermate"

  zap trash: [
    "~/Library/Application Support/com.marksdo.WhisperMate",
    "~/Library/Application Support/whispermate",
    "~/Library/Preferences/com.marksdo.WhisperMate.plist",
    "~/Library/Caches/com.marksdo.WhisperMate",
    "~/Library/Saved Application State/com.marksdo.WhisperMate.savedState",
  ]
end
