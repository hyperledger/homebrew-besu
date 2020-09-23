class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.5.5.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e67b0a899dc4421054eaa9a8112cb89e1e5f6a56f0d8aa1b0c5111c53dfad2ad"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
