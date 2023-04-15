class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.1.3/besu-23.1.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "adb3b17e45217f86a56f07f09faba2e5d8a0eb8a585ad5307696d6cc58ee2f73"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
