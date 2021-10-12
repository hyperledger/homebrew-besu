class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.0-RC2/besu-21.10.0-RC2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "4a279b515a2525ae42299ba74518a109444776b01c501ee4d96ea345c35194eb"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
