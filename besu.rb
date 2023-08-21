class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.7.1/besu-23.7.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "dfac11b2d6d9e8076ab2f86324d48d563badf76fd2a4aadc4469a97aef374ef5"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
