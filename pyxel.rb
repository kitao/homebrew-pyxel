class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.7.1/pyxel-1.7.1-macos.zip"
    sha256 "b5ce42374310180f97f71eba4798ae80796164406bc868392ee1c40016ed6c54"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.7.1/pyxel-1.7.1-linux.zip"
    sha256 "d560ff8d7a480eea1b489f2cbfc655615491a7a0873cafb78fadf35df51721e2"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
