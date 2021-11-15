class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.2/besu-21.10.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "4b96d4d10c0c6128dc67333c8600e927ea135b4db5e5f74688a0753260b7b985"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
