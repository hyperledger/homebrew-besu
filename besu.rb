class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.1.2/besu-22.1.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "1b26e3f8982c3a9dbabc72171f83f1cfe89eef84ead45b184ee9101f411c1251"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
