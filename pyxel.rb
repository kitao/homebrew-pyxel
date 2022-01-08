class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.7/pyxel-1.5.7-macos.zip"
    sha256 "0217e812072004c4bb08effcec503f6d0317de685b38ffdf7eb46f05f30c517d"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.7/pyxel-1.5.7-linux.zip"
    sha256 "e1c8cba5221231c7c077913a10e12a583e024492cfce1af8bb6e7a4616a6d887"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
