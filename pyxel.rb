class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.9/pyxel-1.6.9-macos.zip"
    sha256 "31e1b15ce28a8ee0ae8c5620bd1a1769e13c1644b9e2ce309afe4890f7ec74b1"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.9/pyxel-1.6.9-linux.zip"
    sha256 "bd0a3cfd860186597139bb943291ba123680261127d1f7808bbf69dff80bdb42"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
