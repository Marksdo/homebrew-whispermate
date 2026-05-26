# homebrew-whispermate

Install WhisperMate from this Homebrew tap:

```shell
brew install --cask marksdo/whispermate/whispermate
```

## 🚀 CLI Usage

WhisperMate includes a handy command-line mode for transcribing media files, exporting subtitles, batch processing videos, and running realtime transcription workflows.

```shell
whispermate [options] -f <media file(s)>
```

### 🎧 Transcribe Files

```shell
# Auto-detect language and choose a suitable engine/model
whispermate -f elon.mp4

# Transcribe every MP4 file in the current folder
whispermate -f *.mp4

# Process multiple files explicitly
whispermate -f a.mp4,b.mp4,c.mp4

# Use a specific engine/model and export SRT
whispermate -f elon.mp4 -engine whispermlx -model v3-turbo -lang auto -o elon.srt

# Export with a subtitle/template preset
whispermate -f elon.mp4 -o elon.md -template Markdown

# Print SRT to stdout and translate subtitles
whispermate -f elon.mp4 -engine whisper.cpp -srt -translate zh
```

### 🧰 Common Options

| Option | Description |
| --- | --- |
| `-f`, `-file <path[,path]>` | 🎬 Input media file or files. Batch mode skips unsupported files. |
| `-engine <name>` | 🧠 Transcription engine, such as `whisper.cpp`, `whisperkit`, `parakeet`, `apple`, or `whispermlx`. |
| `-model <name>` | 📦 Model name for the selected engine. Download/manage models in the WhisperMate app. |
| `-lang <code>` | 🌐 Language code, or `auto` for multilingual audio. |
| `-vad` | 🔇 Enable VAD for supported engines. |
| `-flash` | ⚡ Enable flash attention for `whisper.cpp`. |
| `-translate`, `-t <from?,to>` | 🌍 Translate subtitles with the active translation engine. |
| `-diarization`, `-d` | 🗣️ Enable speaker diarization. |
| `-o`, `-output <path>` | 💾 Write output to a file. Supports template values like `{{date1}}`. |
| `-template <name>` | 📝 Export with a subtitle editor template/menu name. |
| `-copy` | 📋 Copy the exported text to the clipboard after success. |
| `-player` | ▶️ Open the quick player after transcription. |
| `-editor` | ✏️ Open the subtitle editor after transcription. |
| `-silent` | 🤫 Do not print transcription text to stdout. |
| `-json` | 🧾 Print JSON output, for example `whispermate -f elon.mp4 -json > elon.json`. |
| `-srt` | 🎞️ Print SubRip output, for example `whispermate -f elon.mp4 -srt > elon.srt`. |
| `-embed-srt` | 📼 Embed generated SRT as a soft subtitle track into the original video. |
| `-h`, `-help` | 🙋 Show CLI help and exit. |

### 📂 Organize Projects

```shell
# Put the generated project into a matching sidebar group
whispermate -f meeting.mp4 -group Work

# Use a saved library preset by fuzzy name
whispermate -f meeting.mp4 -preset Podcast
```

| Option | Description |
| --- | --- |
| `-group <name>` | 🗂️ Assign the project to a sidebar group whose name contains the given text. |
| `-preset <name>` | 🎛️ Use a saved preset whose name contains the given text. |

### 🔴 Realtime Transcription

```shell
# Record system/app audio into a realtime project
whispermate -realtime meeting_044 -source audio -vout

# Translate realtime audio from English to Chinese
whispermate -realtime -engine whisper.cpp -model v3-turbo -source audio -translate en,zh

# Capture a target app and output video
whispermate -realtime -source app -appname chrome -engine apple -model zh_cn -translate zh,en -capture -vout

# Create a daily meeting project and stream latest subtitles for OBS
whispermate -realtime Meeting_{{yyyyMMdd}} -source audio -engine apple -model en_us -translate en,zh -vout -obs
```

| Option | Description |
| --- | --- |
| `-realtime <project-name>` | 🎙️ Start a realtime project. Missing projects are created automatically. |
| `-source <app,mic,audio>` | 🎚️ Set the realtime recording source. |
| `-appname <name>` | 🪟 When `source=app` or `source=audio`, record only the matching app. Omit it to record all apps. |
| `-capture <appname?>` | 🖥️ Capture a target app screen, or the full screen when no app is provided. Works with `source=app`. |
| `-monitor <keyword>` | 🔔 Send notifications when transcription contains keywords. Use commas for multiple keywords. |
| `-vquality <0,1,2,3>` | 🎥 Video capture quality. `0` means best quality. |
| `-vsize <1,1/2,1/4>` | 📐 Capture size scale. |
| `-vout` | 📹 Output the result video to the current directory. |
| `-nofile` | 🧾 Keep transcription only, without saving realtime media. |
| `-timestamp <0|false>` | ⏱️ Disable timestamp prefixes. Timestamps are enabled by default. |
| `-statusbar` | 📊 Show a status bar below the active transcription line. |
| `-obs <templateText?>` | 📡 Continuously write the latest subtitle content to a file for OBS. |
| `-log` | 🪵 Write confirmed lines to an hourly rotating plain-text log file. |

### 🧹 Model Tools

```shell
# List downloaded local models
whispermate -lsmodel

# Delete a specific local model
whispermate -delmodel -engine whisper.cpp -model v3-turbo
```

| Option | Description |
| --- | --- |
| `-lsmodel` | 🔎 Show all locally downloaded models for each engine. |
| `-delmodel` | 🗑️ Delete a model. Requires both `-engine` and `-model`. |

## ⬆️ Upgrade

```shell
brew update
brew upgrade --cask marksdo/whispermate/whispermate
```

## 🗑️ Uninstall

```shell
brew uninstall --zap whispermate
```
