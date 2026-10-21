class Todone < Formula
  desc "Tiny terminal todo lists in plain Markdown, with a TUI"
  homepage "https://github.com/1stdevfriend/todone"
  url "https://github.com/1stdevfriend/todone/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f729b08a38ad5650ba5943b55f27911367e91c463e26067880b7653385c4c631"
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
