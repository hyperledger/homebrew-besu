class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.10.0-RC3/besu-21.10.0-RC3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "3d4857589336717bf5e4e5ef711b9a7f3bc46b49e1cf5b3b6574a00ccc6eda94"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
