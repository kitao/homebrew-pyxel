class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.2/pyxel-1.6.2-macos.zip"
    sha256 "d96ab324d56ff7fbddbccb909cc10c1b6f49f4a5e8ad586491393bcdcfeeb615"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.2/pyxel-1.6.2-linux.zip"
    sha256 "f6f4b362ef8e8e5e0c0e6991447be9fc9fec453adaca8d484a6b5982fd7e4ab0"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
