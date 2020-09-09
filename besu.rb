class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.5.4.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "1f4df8e1c5e3b5b3abf6289ccfe70f302aa7c29a652b2eb713ffbdc507670420"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
