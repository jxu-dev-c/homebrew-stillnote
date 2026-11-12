cask "stillnote" do
  version "0.13.0"
  sha256 "1ebb46318bfd82647fe7b994bb2450c6174edc33c2641c02518e074df0c1e861"

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
