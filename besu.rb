class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.8/besu-21.10.8.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "a91da1e82fb378e16437327bba56dd299aafdb0614ba528167a1dae85440c5af"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
