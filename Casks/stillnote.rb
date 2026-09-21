cask "stillnote" do
  version "0.4.0"
  sha256 "1c9db8dd5301e43c4c6db10dbff2cb8acf14d0b9f5f5b9ba804021f203c0eaa0"

  url "https://github.com/jxu-dev-c/homebrew-stillnote/releases/download/v#{version}/Stillnote-#{version}-macos-arm64.zip"
  name "Stillnote"
  desc "Private meeting notebook with local speech transcription"
  homepage "https://github.com/jxu-dev-c/Stillnote"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Stillnote.app"

  caveats <<~EOS
    Download the speech model once in Stillnote Settings.
    This app is ad-hoc signed. macOS may require approval in Privacy & Security.
    Meetings and models are preserved when uninstalling.
  EOS
end
