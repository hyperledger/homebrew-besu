class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.4.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "0f96ff4381e2ad10c3fdec8c4f62599816bed32dec1de1a4abecc20c42127972"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
