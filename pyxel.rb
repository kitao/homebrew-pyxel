class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.8/pyxel-1.6.8-macos.zip"
    sha256 "b852c7ad9b751df39deea29a60f833274784514f32f48995910b6a18a0786565"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.8/pyxel-1.6.8-linux.zip"
    sha256 "fc762fbd1f27e8af138fb95c7d57bf4f09b3a5e95205a357cc14404b321df8f7"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
