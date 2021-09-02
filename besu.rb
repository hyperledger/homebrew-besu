class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/21.7.3/besu-21.7.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "676c8bbcf4a2e7d08198b0a106a2164e8d55d6f3e1d19783cfd70048be302fb3"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
