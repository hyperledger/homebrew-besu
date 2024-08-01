class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/24.7.1/besu-24.7.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e616f8100f026a71a146a33847b40257c279b38085b17bb991df045cccb6f832"

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
