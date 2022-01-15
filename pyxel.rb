class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.1/pyxel-1.6.1-macos.zip"
    sha256 "8533059779d6b68f59fbe6a35fb6058c996f8e8adadc8ca6aa8aff2b155df532"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.1/pyxel-1.6.1-linux.zip"
    sha256 "c9247e45b3a5d8a12e0fd6bf82bcd461a51771367f702eb7603abb553750ba13"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
