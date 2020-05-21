class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.4.5.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "c543363e5d296bfe839c20b569e347159293b7df628bd261ecafa6fb168be99c"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
