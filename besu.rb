class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.4.2/besu-22.4.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "e8e9eb7e3f544ecefeec863712fb8d3f6a569c9d70825a4ed2581c596db8fd45"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
