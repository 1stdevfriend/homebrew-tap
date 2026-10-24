class Todone < Formula
  desc "Tiny terminal todo lists in plain Markdown, with a TUI"
  homepage "https://github.com/1stdevfriend/todone"
  url "https://github.com/1stdevfriend/todone/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "548e2d1d3154b8e08ffcb660690bf2dca1da55dd46a05578c9efd35d2c776c22"
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
