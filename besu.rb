class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.6.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e6023dc41c43b7a47b3ce721c0d084b580635d8ef3898730700fb1096bc21064"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
