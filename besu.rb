class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.8.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "5cc136bde430233fa626883bae044b986af670de850f3da418fdc0780efdb413"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
