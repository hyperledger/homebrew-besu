class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://github.com/hyperledger/besu/releases/download/25.2.0/besu-25.2.0.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "294a6aad21b12dde882ee02415d790a6fb1519109fec523993e5e58f16dba558"

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
