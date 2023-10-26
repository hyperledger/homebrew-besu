class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.10.1/besu-23.10.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "fb173acb93c72fbb74a6542051691ca2d3d5f54ea2f51026467a512f3a22106b"

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
