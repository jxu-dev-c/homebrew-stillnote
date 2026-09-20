cask "stillnote" do
  version "0.2.0"
  sha256 "33a57253f6c2657f267aa2b2978b0281dbd3eb89693b8bcdd6da1f6acecf1e0c"

  url "https://github.com/jxu-dev-c/homebrew-stillnote/releases/download/v#{version}/Stillnote-#{version}-macos-arm64.zip"
  name "Stillnote"
  desc "Private meeting notebook with local speech transcription"
  homepage "https://github.com/jxu-dev-c/Stillnote"

  depends_on formula: "jxu-dev-c/stillnote/stillnote-runtime"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Stillnote.app"

  caveats <<~EOS
    Download the speech model once in Stillnote Settings.
    This app is ad-hoc signed. macOS may require approval in Privacy & Security.
    Meetings and models are preserved when uninstalling.
  EOS
end
