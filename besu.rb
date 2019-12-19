class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.8.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "d04a7549998b7a523f1bcf861d47224ff2e4a0e61403361aa66d7c0c72683603"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
