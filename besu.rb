class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/22.10.2/besu-22.10.2.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "4c9208f684762670cb4f2c6ebfb6930e05e339a7c3c586fe8caa9f26462830aa"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
