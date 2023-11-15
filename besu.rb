class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.10.1/besu-23.10.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "6a591bb4ae6f3df7371fee7676dcd1d34925c5c2e7790cc783037e4b0d8b6292"

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
