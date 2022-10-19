class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.7.7/besu-22.7.7.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "79b2b1518605603d8268f873f2576617ca8340d89c045e0eda6896f40defea0d"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
