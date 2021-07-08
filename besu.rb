class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"

  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.7.0/besu-21.7.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "389465fdcc2cc5e5007a02dc2b8a2c43d577198867316bc5cc4392803ed71034"


  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
