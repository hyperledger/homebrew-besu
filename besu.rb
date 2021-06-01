class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.1.7/besu-21.1.7.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "f415c9b67d26819caeb9940324b2b1b9ce6e872c9181052739438545e84e2531"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
