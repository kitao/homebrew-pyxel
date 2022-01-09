class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.0/pyxel-1.6.0-macos.zip"
    sha256 "8c7e61ebe0894c2e0bd2ba32a6681438ca4f5aab666aadc60de28128692dcfc7"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.0/pyxel-1.6.0-linux.zip"
    sha256 "961e3481d4b1a99614ba27c0f8a2095c4e0bd0f57c4c97476e44d7131a8aafd1"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
