class Todone < Formula
  desc "Tiny terminal todo lists in plain Markdown, with a TUI"
  homepage "https://github.com/1stdevfriend/todone"
  url "https://github.com/1stdevfriend/todone/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "977c1f55ce809dc0abbc3d057d64768c83b6dc84403643bc0d8b9b275f180bbd"
  license "GPL-3.0-or-later"

  depends_on :macos

  def install
    bin.install "todone"
  end

  test do
    ENV["TODONE_HOME"] = testpath/".todone"
    system bin/"todone", "-w", "inbox", "n", "hello"
    assert_match "hello", shell_output("#{bin}/todone -w inbox l")
  end
end
