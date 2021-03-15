class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.1.2/besu-21.1.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "02f4b6622756b77fed814d8c1bbf986c6178d8f5adb9d61076e061124c3d12aa"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
