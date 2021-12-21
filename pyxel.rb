class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.3/pyxel-1.5.3-macos.zip"
    sha256 "a6243bdb0cbd9b36cccb93229a2eec8143a45d36452499e397d7a63be2b56da1"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.3/pyxel-1.5.3-linux.zip"
    sha256 "af0fa4901086d741b5e3ff32623379473e3dbb9a4ab4af2b1398b361f16271a4"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
