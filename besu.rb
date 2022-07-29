class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.0-RC3/besu-22.7.0-RC3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "5de22445ab2a270cf33e1850cd28f1946442b7104738f0d1ac253a009c53414e"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
