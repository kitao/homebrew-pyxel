class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.1/pyxel-1.5.1-macos.zip"
    sha256 "637c14c0fcbd5d6500d429c2ddbac8e8e5d739aaf267b4b5a09010c15f8e1aca"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.1/pyxel-1.5.1-linux.zip"
    sha256 "e0b6e4c75e7654668e4c614684894a763dbe015d8562a3beb8f939ef14c2e220"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
