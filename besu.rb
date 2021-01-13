class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-20.10.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "f15cd5243b809659bba1706c1745aecafc012d3fc44a91419522da925493537c"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
