class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.8/pyxel-1.5.8-macos.zip"
    sha256 "604d288029ffd10c737ec68016e27a62a3bcbdec98dd88d3a2228e24222cb690"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.8/pyxel-1.5.8-linux.zip"
    sha256 "816b3461321d9353923513bbc34b23edc7a445f8bfab1dcd63b6666eebc1b94d"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
