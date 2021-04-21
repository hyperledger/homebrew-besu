class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.1.5/besu-21.1.5.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "edd78fcc772cfa97d11d8ee7b5766e6fac4b31b582f940838a292f2aeb204777"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
