class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  url "https://github.com/kitao/pyxel/raw/develop/dist/pyxel-1.5.0-macos.zip"
  sha256 ""
  license "MIT"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel ")
    assert false
  end
end
