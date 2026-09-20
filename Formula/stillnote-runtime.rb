class StillnoteRuntime < Formula
  desc "Local speech runtime for Stillnote"
  homepage "https://github.com/jxu-dev-c/Stillnote"
  url "https://github.com/jxu-dev-c/homebrew-stillnote/releases/download/v0.2.1/Stillnote-runtime-0.2.1-macos-arm64.tar.gz"
  version "0.2.1"
  sha256 "981bbc63aa61c31c7d6e01386a07acf3741220a3d18437978dc79fa1824bf8df"
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
