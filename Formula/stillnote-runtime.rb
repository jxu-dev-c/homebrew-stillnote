class StillnoteRuntime < Formula
  desc "Local speech runtime for Stillnote"
  homepage "https://github.com/jxu-dev-c/Stillnote"
  url "https://github.com/jxu-dev-c/homebrew-stillnote/releases/download/v0.2.0/Stillnote-runtime-0.2.0-macos-arm64.tar.gz"
  version "0.2.0"
  sha256 "116ba4839e3091de1b85a0788bc764ef6fbb47357843f8f6382be99d2da5aff6"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos
  depends_on "python@3.13"

  on_macos do
    depends_on macos: :sequoia
  end

  def install
    system formula_opt_bin("python@3.13")/"python3.13", "-m", "venv", libexec
    system libexec/"bin/python", "-m", "pip", "install",
           "--no-index", "--no-deps", "--require-hashes", "-r", "requirements.txt"
    system libexec/"bin/python", "-m", "pip", "check"
    libexec.install "runtime-smoke.py", "manifest.json", "requirements-moss.lock"
    system libexec/"bin/python", libexec/"runtime-smoke.py"
    pkgshare.install "THIRD_PARTY_NOTICES.md", "licenses"
  end

  test do
    system libexec/"bin/python", libexec/"runtime-smoke.py"
  end
end
