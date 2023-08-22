class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.7.1/besu-23.7.1.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "75361e1815877bbd10eeeb5a6f9b82a8a15efec137dac816426b6e13ae461b09"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
