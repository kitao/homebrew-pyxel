class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.7/pyxel-1.6.7-macos.zip"
    sha256 "c578d9f70553d7ae03494fbe09bc61ae2cb4e76a7dd9f7e45b753be56c1d8edf"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.7/pyxel-1.6.7-linux.zip"
    sha256 "c171283e59cb769512d16f68aade51071197bc2b7e7ffaf2e845029f69dff69c"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
