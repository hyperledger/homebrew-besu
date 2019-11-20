class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.5.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "f7d7d36a65352ea0414d573b046e3cc34fa3ff6a8c4d97b0a33bedf425487219"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
