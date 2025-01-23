class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.1.0/besu-25.1.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "b57ffc059bc8531a1323551e1639b999fd813bb88327c0e6da2a1c04092958c0"

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
