class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.4.1/besu-25.4.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "b185ecd441c6aba213ad598db2482b6daaaae18eb35d9e8a9866d6db279da2eb"

  depends_on "openjdk" => "21+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
