class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.5/pyxel-1.5.5-macos.zip"
    sha256 "26e8694fa9dc05fa1f16930d040b09366621f7fb371e0991b57015fdd068a100"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.5/pyxel-1.5.5-linux.zip"
    sha256 "29177265ad08da7d4654cbbf0b31668f98226637449ef046dee2dc91d2367a66"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
