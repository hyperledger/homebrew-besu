class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.0/besu-21.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "71374454753c2ee595f4f34dc6913f731818d50150accbc98088aace313c6935"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
