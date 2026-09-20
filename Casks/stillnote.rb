cask "stillnote" do
  version "0.3.0"
  sha256 "68f9ab2904495867341a2533f02a625b4c48686f5152fac576ed2ba7968b56e3"

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
