class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.4.6.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "c9c504a5b4cab04e858d0b0ce3e5c767bdaffe6d19f46437bfb83fffb63932cb"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
