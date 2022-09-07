class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.2/besu-22.7.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "72653171b1ddd910e705fc6f616d7f1f4c120ef0d91718f0376f3ee5f2982c11"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
