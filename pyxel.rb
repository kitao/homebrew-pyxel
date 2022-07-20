class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.7.2/pyxel-1.7.2-macos.zip"
    sha256 "e2f6f58a8d0d9789ffaec5863ceffc2d98e7e52c3a0a95290c53aabcc5c000f7"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.7.2/pyxel-1.7.2-linux.zip"
    sha256 "d63f6b6c87928d9627938054de682c94165f89c8c225f913946f0926bdc22fba"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
