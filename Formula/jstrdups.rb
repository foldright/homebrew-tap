class Jstrdups < Formula
  desc "Find out duplicate string literals in java source code files under current directory"
  homepage "https://github.com/foldright/jstrdups"
  url "https://github.com/foldright/jstrdups/releases/download/v0.2.0/jstrdups-0.2.0.zip"
  sha256 "7305e00d8255d482049294bc9a5634ac8f88aee8cbcc16ae9478f54d84305e4d"
  license "Apache-2.0"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"bin/jstrdups"
    prefix.install libexec/"etc"
    prefix.install libexec/"share"
  end

  test do
    system "#{bin}/jstrdups", "--help"
  end
end
