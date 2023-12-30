class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.10.3/besu-23.10.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "da7ef8a6ceb88d3e327cacddcdb32218d1750b464c14165a74068f6dc6e0871a"

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
