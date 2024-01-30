class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/24.1.1/besu-24.1.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e23c5b790180756964a70dcdd575ee2ed2c2efa79af00bce956d23bd2f7dc67c"

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
