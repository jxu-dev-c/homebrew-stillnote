cask "stillnote" do
  version "0.5.0"
  sha256 "b3064df416c00c4cebd4674ebed844ac9d5b8c0a4e6dae34d977b5540541fb44"

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
    This app is ad-hoc signed. macOS may require approval in Privacy & Security.
    The stillnote command reads and corrects meetings and controls recording while the
    app is open; it can be switched off in Settings > Advanced.
    Meetings and models are preserved when uninstalling.
  EOS
end
