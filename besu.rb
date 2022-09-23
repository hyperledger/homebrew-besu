class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.3/besu-22.7.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "368c6cb86119f8fe30bb12ab8c63b4d95a0fd8baf9c9414307a0a4033756b709"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
