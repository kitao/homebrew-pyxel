class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.0/pyxel-1.5.0-macos.zip"
    sha256 "022c49c0ba46112bc636f8d9c14a39ed11c7795a5c4f60504ff2b9aed6eb91f4"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.5.0/pyxel-1.5.0-linux.zip"
    sha256 "6559f58808fe2e117eb5b760ac7e71962f26df754f6858da6a1fe4d2495b4ae6"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
