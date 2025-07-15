class Jstrdups < Formula
  desc "Find out duplicate string literals in java source code files under current directory"
  homepage "https://github.com/foldright/jstrdups"
  url "https://github.com/foldright/jstrdups/releases/download/v0.2.1/jstrdups-0.2.1.zip"
  sha256 "6e0b3e4f9cf7245d1e8dd725b8cca634615926ceaed717bddfcb8f32c516e6a5"
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
