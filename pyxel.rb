class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/raw/develop/dist/pyxel-1.5.0-macos.zip"
    sha256 ""
  end

  on_linux do
    url "https://github.com/kitao/pyxel/raw/develop/dist/pyxel-1.5.0-linux.zip"
    sha256 ""
    depends_on "sdl2"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
