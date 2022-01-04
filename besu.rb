class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.6/besu-21.10.6.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "0fdda65bc993905daa14824840724d0b74e3f16f771f5726f5307f6d9575a719"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
