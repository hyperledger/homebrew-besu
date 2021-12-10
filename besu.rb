class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.3/besu-21.10.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "78eb3ee9174e2c4594f4845670ad66d44479de6f470b2b950d056102f57d839e"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
