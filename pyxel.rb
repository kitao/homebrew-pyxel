class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  url "https://github.com/kitao/pyxel/raw/develop/dist/pyxel-1.5.0-macos.zip"
  version "1.5.0pre"
  sha256 "ef3c3a848fb4042e9d8f148e38f431ef2767b3b04acadd69c0a4a20270e01d33"
  license "MIT"

  def install
    bin.install "pyxel"
  end

  test do
    #
  end
end
