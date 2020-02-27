class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.4.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "84a49bf14e2460494987b6e58a075bbb0680889c022049af83496628a5a5ac97"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
