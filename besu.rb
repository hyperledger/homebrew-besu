class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.1/besu-21.10.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "064df81be49c31ebfc0e1a5f03357e8f6f9a7f5e7bcb82e2b187e2d58e1704eb"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
