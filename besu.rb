class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.4.3/besu-22.4.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "144f4c407193cb66897ac5999b215507333df6b418c84d607bd68e16a179ab64"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
