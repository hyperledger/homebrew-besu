class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.0/besu-22.7.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "5b1586362e6e739c206c25224bb753a372bad70c0b22dbe091f9253024ebdc45"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
