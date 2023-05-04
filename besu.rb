class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.4.0/besu-23.4.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "023a267ee07ed6e069cb15020c1c0262efc5ea0a3e32adc6596068cff7fd0be5"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
