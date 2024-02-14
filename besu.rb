class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/24.1.2/besu-24.1.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "9033f300edd81c770d3aff27a29f59dd4b6142a113936886a8f170718e412971"

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
