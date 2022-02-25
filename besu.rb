class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.1.1/besu-22.1.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "cfff79e19e5f9a184d0b62886990698b77d019a0745ea63b5f9373870518173e"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
