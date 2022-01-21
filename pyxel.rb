class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.6/pyxel-1.6.6-macos.zip"
    sha256 "29a4cdaf6aa0847865a05d96022b8225b1142a561139d126be0992133e492bea"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.6/pyxel-1.6.6-linux.zip"
    sha256 "625bc7592f8bc3fc20b2fa6c020a7f410fde5c9ea761783af70065ed8d355882"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
