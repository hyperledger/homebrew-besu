class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.0-RC4/besu-21.10.0-RC4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "d69a85531f20c264b836ef62969f3c1b3d3483d46075ea7c3f77d46517d6dab1"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
