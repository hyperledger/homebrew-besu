class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.4/besu-22.7.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "4f2a0c20bee7f266ec1dcb45fa90ae1ca42f4b22e9b21a601b7705357259aea9"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
