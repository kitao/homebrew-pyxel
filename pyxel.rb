class Pyxel < Formula
  desc "A retro game engine for Python"
  homepage "https://github.com/kitao/pyxel"
  license "MIT"

  on_macos do
    url "https://github.com/kitao/pyxel/releases/download/v1.7.0/pyxel-1.7.0-macos.zip"
    sha256 "25e48feec4ed05027c96b00ef7b5428e1cdc46f721de343583ee7aa68adcfd32"
  end

  on_linux do
    url "https://github.com/kitao/pyxel/releases/download/v1.7.0/pyxel-1.7.0-linux.zip"
    sha256 "dbedda564d5abab50fee4b5ae730738ebd55a60c5ec7bfa62ec2f92a3fc33378"
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"pyxel"
  end

  test do
    assert shell_output("#{bin}/pyxel").start_with?("Pyxel")
  end
end
