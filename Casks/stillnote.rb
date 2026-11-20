cask "stillnote" do
  version "0.16.1"
  sha256 "c1621d8ea8c6046d0807caa7c0a41a742225afb28a4a0099df87723e10894586"

  url "https://github.com/jxu-dev-c/homebrew-stillnote/releases/download/v#{version}/Stillnote-#{version}-macos-arm64.zip"
  name "Stillnote"
  desc "Private meeting notebook with local speech transcription"
  homepage "https://github.com/jxu-dev-c/Stillnote"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Stillnote.app"
  # The bundled command-line interface. It talks to the running app over a local socket.
  binary "#{appdir}/Stillnote.app/Contents/Helpers/stillnote"

  caveats <<~EOS
    Download the speech model once in Stillnote Settings.
    This app is not Apple-notarized. macOS may require approval in Privacy & Security.
    The stillnote command reads and corrects meetings and controls recording while the
    app is open; it can be switched off in Settings > Advanced.
    Meetings and models are preserved when uninstalling.
  EOS
end
