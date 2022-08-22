class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.1/besu-22.7.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "ba6e0b9b65ac36d041a5072392f119ff76e8e9f53a3d7b1e1a658ef1e4705d7a"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
