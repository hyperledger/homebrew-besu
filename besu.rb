class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.10.3/besu-22.10.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "0bf6bc98e01b0c1045f1b7d841a390c575bc5203c2a4e543d922fbc1ea0d3d5d"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
