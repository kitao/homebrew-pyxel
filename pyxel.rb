class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.2/pyxel-1.5.2-macos.zip"
    sha256 "df53f4733bcfd456b935150c9d124b58e91abbdede502baa0df1ec1b5b548410"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.2/pyxel-1.5.2-linux.zip"
    sha256 "d475e09a4971b2616507b7eac99efa8701868098c4be8b82c24e8eebcf8eb25e"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
