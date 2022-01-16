class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.4/pyxel-1.6.4-macos.zip"
    sha256 "ceb65ae96f129a1cf029b5ae349a3c3ae3a38d3bb7cded0e53be1383a9c27628"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.4/pyxel-1.6.4-linux.zip"
    sha256 "a469e907e7aa5868d2e30f681de863d748c875ed24f52e518c92bc92f07e6689"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
