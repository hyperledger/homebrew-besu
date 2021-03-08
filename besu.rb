class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.1.1/besu-21.1.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "c22a80a54e9fed864734b9fbd69a0a46840fd27ca5211648a3eaf8a955417218"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
