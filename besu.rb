class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.10.1/besu-22.10.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "0dbee534620c7cc0fac0596e6df0c7f8a74be9df9cecd9d4f1407016f30fb9a1"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
