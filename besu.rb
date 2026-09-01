class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/26.8.1/besu-26.8.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "1357fb3587247b6debcee9998dd145f61f9c82b66f4fbb88c2c892bf9edfb464"

  depends_on "openjdk" => "21+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
