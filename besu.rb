class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.4.1/besu-22.4.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "076f688900ca515f13774c22d64d6a7ddc6351f24c0e7db823d304c84f9a0a2e"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
