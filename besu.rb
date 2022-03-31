class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.1.3/besu-22.1.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "9dafb80f2ec9ce8d732fd9e9894ca2455dd02418971c89cd6ccee94c53354d5d"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
