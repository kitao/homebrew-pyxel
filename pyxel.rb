class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.3/pyxel-1.6.3-macos.zip"
    sha256 "7d8cc474466ffd993879544a7c79dbce5fffbae384cb5bbd245962e4b6c0f682"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.3/pyxel-1.6.3-linux.zip"
    sha256 "de7bf63b49d6c30cbff94d751f77385c6d6f111a6a835310120f7dabaa793f11"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
