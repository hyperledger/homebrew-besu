class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.7.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "c5d99ab4a6dd1eb98f238af216cb86f079ad988fb2681e25d0fc04cef8745f8c"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
