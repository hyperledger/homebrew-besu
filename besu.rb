class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/23.10.0/besu-23.10.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "d5dafff4c3cbf104bf75b34a9f108dcdd7b08d2759de75ec65cd997f38f52866"

  depends_on "openjdk" => "17+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
