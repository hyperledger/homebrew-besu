class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://dl.bintray.com/hyperledger-org/besu-repo/besu-1.3.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "f9d255d43451119a470a3f95de9f18b872ad5c2f68a97388f2410b8ea41345a3"

  depends_on :java => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
