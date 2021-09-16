class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.7.4/besu-21.7.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "778d3c42851db11fec9171f77b22662f2baeb9b2ce913d7cfaaf1042ec19b7f9"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
