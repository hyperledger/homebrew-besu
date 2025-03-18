class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.3.0/besu-25.3.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "125563b6b892859a55f31429578d43b990977a4a96a9e78ef051b267a0c50c07"

  depends_on "openjdk" => "21+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
    bin.install "bin/evmtool"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
