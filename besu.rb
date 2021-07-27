class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.7.1/besu-21.7.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "83fc44e39a710a95d8b6cbbbf04010dea76122bafcc633a993cd15304905a402"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
