require "formula"

class Pyxel < formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  url "https://github.com/kitao/pyxel/raw/develop/dist/pyxel-1.5.0-macos.zip"
  version "1.5.0pre"
  sha256 ""

  def install
    bin.install "pyxel-1.5.0-macos/pyxel"
  end

  test do
  end
end
