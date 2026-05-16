cask "whispermate" do
  version "12.4"
  sha256 "b16637d73a2cba79064bdb2ad91d3e54ffad937f1c3e55db4a117e9425f5a8bf"

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
