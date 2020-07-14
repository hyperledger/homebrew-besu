class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.5.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "56929d6a71cc681688351041c919e9630ab6df7de37dd0c4ae9e19a4f44460b2"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
