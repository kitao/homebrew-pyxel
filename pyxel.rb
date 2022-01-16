class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.5/pyxel-1.6.5-macos.zip"
    sha256 "09f7257e2853284431c432ff672e3349ba51d11a163b4e65711a5b7227e6d15a"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.6.5/pyxel-1.6.5-linux.zip"
    sha256 "962320a4be4dffd73739845362536b777efa25a5bf27f4b5341b00f9a666be18"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
