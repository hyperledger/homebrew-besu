class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.1.0/besu-23.1.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e037f5c8f976150af40403311d1c81018f4c3dfbef0ad33324d8c3e708d1fdca"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
