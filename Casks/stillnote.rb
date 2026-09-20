cask "stillnote" do
  version "0.2.1"
  sha256 "b8e4d633947d9ad19eb492601ed0a7dad49473c68484af673b26b618505dc4d3"

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
