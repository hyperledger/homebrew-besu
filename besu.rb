class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.4.1/besu-23.4.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "1d82ed83a816968aa9366d9310b275ca6438100f5d3eb1ec03d3474b2a5f5e76"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
