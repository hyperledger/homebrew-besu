class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.1.2/besu-23.1.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "2a9ff091cb4349fc23625a52089400bb6529a831eb22d15d0221cb27039ab203"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
