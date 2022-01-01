class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.6/pyxel-1.5.6-macos.zip"
    sha256 "3550aa65a0c3acf9d1babf46d9d828acfc3a71f1ebbee0a5eac7d298578d4c14"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.6/pyxel-1.5.6-linux.zip"
    sha256 "e3721a467e3224d17be81106ec2b3a0f3d4510e501da30c92b1a668192e18fe4"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
