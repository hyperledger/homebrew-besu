class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.10.0/besu-22.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "c8e39f7c879409cb9b47f4d3de5e9c521249083830a8c9a45e8a14a319fe195d"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
