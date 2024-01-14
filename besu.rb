class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/24.1.0/besu-24.1.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "d36c8aeef70f0a516d4c26d3bc696c3e2a671e515c9e6e9475a31fe759e39f64"

  depends_on "openjdk" => "17+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
