class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.4/pyxel-1.5.4-macos.zip"
    sha256 "71707fdd53f802955ff77b922283479a72d949104fb3c71b667b8461240a4277"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.4/pyxel-1.5.4-linux.zip"
    sha256 "30667e94340f70b8f596c893c614366203f46ba8bb746cf7ede7db948f2bf864"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
