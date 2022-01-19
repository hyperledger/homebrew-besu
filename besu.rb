class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/20.10.9/besu-20.10.9.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "26489881d852eefdda2cf0203cb30f7b2045ecfb299da8c744e9579cbe2934e2"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
