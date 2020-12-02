class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-20.10.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "710aed228dcbe9b8103aef39e4431b0c63e73c3a708ce88bcd1ecfa1722ad307"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
